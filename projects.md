---
layout: mylayout
title: Old projects
---
_All the projects listed here are developed under [Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)._

**None of the projects are maintained anymore.**

## [Java utilities](https://github.com/jorgemf/java-util)

Set of utilities in java.

- Tree data structures:
  - trie
  - octree + basic intersection shapes
- Search algorithms:
  - a-star (normal and parallel version)
  
## [Android loading helper (v1.2.7)](https://github.com/jorgemf/android-loading-helper)

Helper classes to perform pull to refresh and endless scrolling in a recycler view.

<img src="http://raw.github.com/jorgemf/android-loading-helper/master/misc/loadinghelper.gif" width="244px" height="400px" alt="Demo GIF">

## Shell scripts

### [svg2android.sh](https://gist.github.com/jorgemf/b8b798b577c3bab9f470)

Shell script that transforms a svg file in png resource files for an android project. It uses inkscape as a tool to export to png.

```sh 
svg2android.sh [INPUT] [PROJECT_DIR] [OUTPUT_NAME] [SIZE_DP
```

### [video2gif.sh](https://gist.github.com/jorgemf/a7be22abdc60aebacf1f)

Shell script that converts a video to a gif file using ffmpeg and convert commands.

```sh
video2gif.sh [INPUT] [HEIGHT] [START] [LENGTH]
```

### [compile_tensorflow_serving.sh](https://gist.github.com/jorgemf/0f2025a45e1568663f4c20551a5881f1)

Scrip to compile TensorFlow serving with CUDA support

## [C/C++ evolutionary library](https://github.com/jorgemf/c-evolutionary-library)

Some evolutionary algorithms written in C++:
- Genetic Algorithm (GA)
- Multi-objective Evolutionary Algorithm (MOEA)
- Artificial Immune System (AIS)
- Feed forward Neural Networks with Backpropagation Learning (NN BP)
- Recurrent Neural Networks with Backpropagation Through Time learning method (rNN BPTT)
