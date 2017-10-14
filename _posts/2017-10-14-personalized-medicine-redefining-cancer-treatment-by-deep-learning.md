---
layout: mylayout
title:  "Personalized Medicine: Redefining Cancer Treatment by deep learning"
summary: "This is the summary of the post"
categories: [Text Classification]
github: "https://github.com/jorgemf/kaggle_redefining_cancer_treatment"
medium: "https://medium.com/@jorgemf/personalized-medicine-redefining-cancer-treatment-by-deep-learning-f6c64a366fff"
---

**work in progress**

> Disclaimer: This work has been supported by [Good AI](http://goodailab.com) Lab and all the experiments has been trained using their platform [TensorPort](https://tensorport.com).

# Personalized Medicine: Redefining Cancer Treatment by deep learning

## Introduction

In this article I want to show you how to apply deep learning to a domain where we are not experts. Usually applying domain information in any problem we can transform the problem in a way that our algorithms work better, but this is not going to be the case. We are going to create a deep learning model for a Kaggle competition: "[Personalized Medicine: Redefining Cancer Treatment](https://www.kaggle.com/c/msk-redefining-cancer-treatment)"

The goal of the competition is to classify a document, a paper, into the type of mutation that will contribute to tumor growth. We also have the gene and the variant for the classification. Currently the interpretation of genetic mutations is being done manually, which it is very time consuming task.

We can approach this problem as a text classification problem applied to the domain of medical articles. It is important to highlight the specific domain here, as we probably won't be able to adapt other text classification models to our specific domain due to the vocabulary used.

Another important challenge we are facing with this problem is that the dataset only contains 3322 samples for training. Usually deep learning algorithms have hundred of thousands of samples for training. We will have to keep our model simple or do some type of data augmentation to increase the training samples.

In the next sections we will see related work in text classification, including non deep learning algorithms. Next, we will describe the dataset and modifications done before training. We will continue with the description of the experiments and their results. And finally, the conclusions and an appendix of how to reproduce the experiments in TensorPort.

## Related work in text classification

### Non deep learning models

The classic methods for text classification are based on [bag of words](https://en.wikipedia.org/wiki/Bag-of-words_model) and [n-grams](https://en.wikipedia.org/wiki/N-gram). In both cases, sets of words are extracted from the text and are used to train a simple classifier, as it could be [xgboost](https://en.wikipedia.org/wiki/Xgboost) which it is very popular in kaggle competitions.

There are variants of the previous algorithms, for example the [term frequency–inverse document frequency](https://en.wikipedia.org/wiki/Tf–idf), also knows as TF–idf, tries to discover which words are more important per each type of document.

### Word2Vector

[Word2Vec](https://arxiv.org/abs/1301.3781) is not an algorithm for text classification but an algorithm to compute vector representations of words from very large datasets. The peculiarity of word2vec is that the words that share common context in the text are vectors located in the same space. For example, countries would be close to each other in the vector space. Another property of this algorithm is that some concepts are encoded as vectors, for example the gender is encoded as a vector in such way that the next equation is true: "king - male + female = queen", the result of the math operations is a vector very close to "queen".

Using the word representations provided by Word2Vec we can apply math operations to words and so, we can use algorithms like [Support Vector Machines (SVM)](https://arxiv.org/abs/1301.2785v1) or the deep learning algorithms we will see later. 

There are two ways to train a Word2Vec model:
[Continuous Bag-of-Words, also knows as CBOW, and the Skip-Gram](https://arxiv.org/abs/1301.3781). Given a context for a word, usually its adjacent words, we can predict the word with the context (CBOW) or predict the context with the word (Skip-Gram). Both algorithms are similar but Skip-Gram seems to [produce better results for large datasets](http://papers.nips.cc/paper/5021-distributed-representations-of-words-and-phrases-and-their-compositionality.pdf).

Besides the linear context we described before, other type of context as a [dependency-based context](https://levyomer.files.wordpress.com/2014/04/dependency-based-word-embeddings-acl-2014.pdf) can be used.

#### Doc2Vec

[Doc2Vector](https://arxiv.org/abs/1405.4053) or Paragraph2Vector is a variation of Word2Vec that can be used for text classification. This algorithm tries to fix the weakness of traditional algorithms that do not consider the order of the words and also their semantics. 

This algorithm is similar to Word2Vec, it also learns the vector representations of the words at the same time it learns the vector representation of the document. It considers the document as part of the context for the words. Once we train the algorithm we can get the vector of new documents doing the same training in these new documents but with the word encodings fixed, so it only learns the vector of the documents. Then we can apply a clustering algorithm or find the closest document in the training set in order to make a prediction.

### Deep learning models




[Sequence to Sequence Learning
with Neural Networks](http://papers.nips.cc/paper/5346-sequence-to-sequence-learning-with-neural-networks.pdf)

#### LSTM / GRU

Long Short Term Memory (LSTM) cells are state of the art when we want to process a sequence of data as text or sound. For example, in [3] authors uses LSTM in a generative and discriminative text classifier. LSTM also has been used with CNN in a model the authors call C-LSTM [4].

#### CNN

Convolutional Neural Networks (CNN) are deeply used in image classification but they also have been applied to text classification. Some researches has done use them with words [1] and others with characters [2]

#### QRNN

#### Attention

Recently, some authors have included attention in their models [5]. The attention mechanism seems to help the network to focus on the important parts and get better results.

#### Other

[1] A Latent Semantic Model with Convolutional-Pooling Structure for Information Retrieval (2014)
[2] Character-level Convolutional Networks for Text Classification (2015)
[] Deep Learning applied to NLP (2017) (Convolutional NN to Text) 
[] Recurrent Residual Learning for Sequence Classification (2016)
[3] Generative and Discriminative Text Classification with Recurrent Neural Networks (2017)
[4] A C-LSTM Neural Network for Text Classification (2015)
[5] Attention-based LSTM Network for Cross-Lingual Sentiment Classification (2016)
[6] Bag of Tricks for Efficient Text Classification (2016)
[] Recurrent Neural Network for Text Classification with Multi-Task Learning (2016) Using same model for multiple task
[] Depthwise Separable Convolutions for Neural Machine Translation (2017) Slicenet



Simple LSTM / GRU

Bidrectional GRU

CNN

HATT

## Dataset

The dataset can be found in https://www.kaggle.com/c/msk-redefining-cancer-treatment/data. It contains basically the text of a paper, the gen related with the mutation and the variation. One text can have multiple genes and variations, so we will need to add this information to our models somehow.

One of the things we need to do first is to clean the text as it from papers and have a lot of references and things that are not relevant for the task. The second thing we can notice from the dataset is that the variations seems to follow some type of pattern. Although we might be wrong we will transform the variations in a sequence of symbols in order to let the algorithm discover this patterns in the symbols if it exits. We would get better results understanding better the variants and how to encode them correctly.

In the beginning of the kaggle competition the test set contained 5668 samples while the train set only 3321. The reason was most of the test samples were fake in order to not to extract any information from them. Later in the competition this test set was made public with its real classes and only contained 987 samples. We will use the test dataset of the competition as our validation dataset in the experiments. Every train sample is classified in one of the 9 classes, which are very unbalanced.
  
 |class|1|2|3|4|5|6|7|8|9|
 |-|-|-|-|-|-|-|-|-|-|
 |number of samples|566|452|89|686|242|273|952|19|37|
 
 ### Preprocessing
 
 Probably the most important task of this challenge is how to model the text in order to apply a classifier. As we don’t have deeply understanding of the domain we are going to keep the transformation of the data as simple as possible and let the deep learning algorithm do all the hard work for us. But, most probably, the results would improve with a better model to extract features from the dataset.

We do several things to clean the data:
- Remove bibliographic references as “Author et al. 2007” or “[1,2]”. We also remove other paper related stuff like “Figure 3A” or “Table 4”.
- We add some extra white spaces around symbols as “.”, “,”, “?”, “(“, “0”, etc.
- We replace the numbers by symbols. If the number is below 0.001 is one symbol, if it is between 0.001 and 0.01 is another symbol, etc.
- We change all the variations we find in the text by a sequence of symbols where each symbol is a character of the variation (with some exceptions).

Another approach is to use an already 
 
 ### Data augmentation
 
 Our dataset is very limited for a deep learning algorithm, we only count with 3322 training samples. In order to avoid overfitting we need to increase the size of the dataset and try to simplify the deep learning model.
 
 The best way to do data augmentation is to use humans to rephrase sentences, which it is an unrealistic approach in our case. Another way is to replace words or phrases with their synonyms, but we are in a very specific domain where most keywords are medical terms without synonyms, so we are not going to use this approach.
 
 As we have very long texts what we are going to do is to remove parts of the original text to create new training samples. We selects a couple or random sentences of the text and remove them to create the new sample text.
 
 In order to improve the Word2Vec model and add some external information we are going to use the definitions of the genes in the Wikipedia. Our hypothesis is that the external sources should contain more information about the genes and their mutations that is not in the abstracts of the dataset. We could add more external sources of information that can improve our Word2Vec model as others research papers related with the topic. We leave this for future improvements out of the scope of this article.

## Experiments

As in the competition we are going to use the [multi-class logarithmic loss](https://www.kaggle.com/wiki/LogLoss) for both training and test. 

If we would want to use any of the models in real life it would be interesting to analyze the [roc curve](https://en.wikipedia.org/wiki/Receiver_operating_characteristic) for all classes before taking any decision. In the scope of this article we will also analyse briefly the accuracy of the models.

### Word2Vec

We are going to use a linear context and [skip-gram with negative sampling](https://arxiv.org/abs/1301.3781), as it gets better results for small datasets with infrequent words. 

The context is generated by the 2 words adjacent to the target word and 2 random words of a set of words that are up to a distance 6 of the target word. Where the most infrequent words have more probability to be included in the context set. The vocabulary size is 40000 and the embedding size is 100 or 300 depending on the model we are using the embeddings. We also use 64 negative examples to calculate the loss value.

### Doc2Vec

### 3-Layer GRU

### Bidirectional GRU

### CNN GRU

### HATT

## Results

### Competition results

As a baseline here we show some results of some competitors that made their kernel public. These are the kernels:
- [Bag of Words, TF-IDF, Word2Vec, LSTM](https://www.kaggle.com/reiinakano/basic-nlp-bag-of-words-tf-idf-word2vec-lstm)
- [XGBoost](https://www.kaggle.com/the1owl/redefining-treatment-0-57456)

The results of those algorithms are shown in the next table. In the case of this experiments the validation set was selected from the initial training set.

| Algorithm | Validation Loss | Validation Accuracy| Public Leaderboard Loss |
|-|-|-|-|
| Bag of words          | 1.65 | 48% | - |
| Random Forest         | 1.44 | 50% | - |
| TF-IDF + SVC          | 1.20 | 55% | - |
| Word2Vec + XGBoost    | 1.26 | 54% | 0.96 |
| LSTM                  | 1.44 | 48% | 1.00 |
| XGBoost               | 1.06 | - | 0.57 |

In general the public leaderboard of the competition shows a better results than the validation score in their test. This could be due a byas in the dataset of the public leaderboard. A different distribution of the classes in the dataset could explain this byas but as I analyzed this dataset when it was published I saw the distribution of the classes was similar.

Analyzing the algorithms the deep learning model based on LSTM cells doesn't seem to get good results compared to the other algorithms. But as one of the authors of those results explanined, the LSTM model seems to have a better distributed confusion matrix compared with the other algorithms. He concludes it was worth to keep analyzing the LSTM model and use longer sequences in order to get better results. We will see later in other experiments that longer sequences didn't lead to better results.

### Basic RNN models



| Algorithm | Validation Loss | Validation Accuracy |
|-|-|-|
| First 1000 words                      |   |   |
| First 2000 words                      |   |   |
| First 3000 words                      |   |   |
| First 5000 words                      |   |   |
| First 10000 words                     |   |   |
| First 3000 words + Last 3000 words    |   |   |



| Algorithm | Validation Loss | Validation Accuracy |
|-|-|-|
| 3-layer GRU                       |   |   |
| Bidirectional GRU                 |   |   |
| CNN + GRU                         |   |   |
| HATT                              |   |   |
| HATT + gene-variation context     |   |   |  

### Jupyter notebook

Similar to the previous model but with a different way to apply the attention I created a kernel in kaggle for the competition: https://www.kaggle.com/jorgemf/rnn-gru-bidirectional-attentional-context. The network was trained for 4 epochs with the training and validation sets and submitted the results to kaggle. I used both the training and validation sets in order to increase the final training set and get better results. The 4 epochs was chosen because in previous experiments the model was overfittin after the 4th epoch. It scored 0.93 in the public leaderboard and 2.8 in the private leaderboard.

The confusion matrix shows a relation between the classes 1 and 4 and also between the classes 2 and 7. The classes 3, 8 and 9 have so few examples in the datasets (less than 100 in the training set) that the model didn't learn them.

![Confusion matrix](https://raw.githubusercontent.com/jorgemf/kaggle_redefining_cancer_treatment/master/confusion_matrix.png "Confusion matrix")

## Conclusions

The kaggle competition had 2 stages due to the initial test set was made public and it made the competition irrelevant as anyone could submit the perfect predictions. That is why the initial test set was made public and a new set was created with the papers published during the last 2 months of the competition. This lead to a smaller dataset for test, around 150 samples, that needed to be distributed between the public and the private leaderboard. When the private leaderboard was made public all the models got really bad results. Almost all models increased the loss around 1.5-2 points. The huge increase in the loss means two things. First, the new test dataset contained new information that the algorithms didn't learn with the training dataset and couldn't make correct predictions. This is normal as new papers try novelty approaches to problems, so it is almost completely impossible for an algorithm to predict this novelty approaches. Second, the training dataset was small and contained a huge amount of text per sample, so it was easy to overfit the models.

Regardless the deep learning model show worse results in the validation set, the new test set in the competition proved that the text classification for papers is a very difficult task and that even good models with the currently available data could be completely useless with new data. As the research evolves, researches take new approaches to address problems which cannot be predicted. With a bigger sample of papers we might create better classifiers for this type of problems and this is something worth to explore in the future. These new classifiers might be able to find common data in the research that might be useful, not only to classify papers, but also to lead new research approaches.

## Apendix: How to reproduce the experiments in TensorPort


```bash 
python src/preprocess_data.py
python src/word2vec_process_data.py
python src/text_classification_process_data.py
python src/doc2vec_process_data.py
```

doc2vec

```bash
python src/doc2vec_train_word_embeds.py
python src/doc2vec_train_doc_prediction.py
python src/doc2vec_eval_doc.py
```

word2vec

```bash
python src/word2vec_train.py
```

simple model multilayer

```bash
python src/text_classification_model_simple.py 
python src/text_classification_model_simple.py eval
```

simple model + cnn

```bash
python src/text_classification_model_simple_cnn.py 
python src/text_classification_model_simple_cnn.py eval
```

simple model bidirectional

```bash
python src/text_classification_model_simple_bidirectional.py 
python src/text_classification_model_simple_bidirectional.py eval
```

hatt

```bash
python src/text_classification_model_hatt.py 
python src/text_classification_model_hatt.py eval
```

## TensorPort

```bash
tport login
```

```bash 
tport create job --name "word2vev-distributed-8" --project "jorgemf/kaggle-personalized-medicine-redefining-cancer-treatment-by-deep-learning" --datasets "jorgemf/kaggle-redefining-cancere-treatment"  --module "word2vec_train" --package-path "src" --python-version 3 --tf-version "1.2" --requirements "requirements.txt" --single-node --instance-type "t2.small" --time-limit "07h00m"

tport create job --name "word2vev-distributed-8" --project "jorgemf/kaggle-personalized-medicine-redefining-cancer-treatment-by-deep-learning" --datasets "jorgemf/kaggle-redefining-cancere-treatment"  --module "word2vec_train" --package-path "src" --python-version 3 --tf-version "1.2" --requirements "requirements.txt" --worker-replicas 3 --worker-type "p2.xlarge" --ps-replicas 1 --ps-type "c4.2xlarge"	 --time-limit "06h00m"

tport run --job-id "word2vev-distributed-8"
```