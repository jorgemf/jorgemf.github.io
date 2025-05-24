---
layout: mylayout
title: Projects
navigation_weight: 4
---

<div class="hero-section hero-section-projects">
  <div class="hero-section-inner">
    <div class="hero-slogan">From Vision to Execution</div>
  </div>
</div>

<p class="projects">Some of these projects were completed as a freelance consultant for companies, while others are personal research initiatives. Only the most relevant projects are listed here.</p>

<div class="projects-list-alt">
  <div class="project-block reverse">
    <div class="project-image-alt"><img src="/assets/projects/llmsbitcoin.jpg" alt="LLM Smart Contract Vulnerability Detection project image"/></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4>LLMs for Smart Contract Vulnerability Detection</h4>
      <p>As the first ML hire at a blockchain security startup, I led the development of a multi-stage LLM-based system to detect, explain, and fix vulnerabilities in smart contracts. Starting with fine-tuned open-source models and later transitioning to OpenAI's APIs, we built a pipeline with over 20 models covering different stages of vulnerability analysis. My responsibilities spanned:<ul>
        <li>Designing and maintaining the ML architecture</li>
        <li>Developing models for detection, explanation, patch generation, and verification</li>
        <li>Optimizing the verification stage, which reduced false positives from 50% to less than 10%</li>
        <li>Managing end-to-end ML workflows: data collection, preprocessing, training, and evaluation</li>
        <li>Contributing to team growth, mentoring junior ML engineers, and aligning with product and security audit teams</li>
        <li>Helped scale the company from 3 to 10 people during my time.</li>
        </ul></p>
      </div>
    </div>
  </div>

  <div class="project-block">
    <div class="project-image-alt"><img src="/assets/projects/quantization.jpg" alt="Embedded Quantized Models project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4>Embedded Quantized Models</h4>
      <p>Worked on two edge AI projects focused on deploying quantized deep learning models for real-time applications:
      <ul>
      <li>Developed a lightweight face embedding model optimized for person identification on resource-constrained devices</li>
      <li>Built an image classification system to detect adversarial or manipulated images for platform security</li>
      <li>Collaborated with a 5-person team of researchers and engineers, optimizing models for size, speed, and accuracy under strict hardware limitations.</li>
      </ul>
      </p>
      </div>
    </div>
  </div>

  <div class="project-block reverse">
    <div class="project-image-alt"><img src="/assets/projects/genai.jpg" alt="Gen AI project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4>Generative AI for Personalized Face Image Creation and Modification</h4>
      <p> Worked with startups to develop generative AI systems focused on creating and modifying human face images using minimal input data and constrained hardware environments:
      <ul>
      <li>Personalized Image Generation: Built a pipeline to generate realistic images of individuals from just a few example photos. Developed an automated preprocessing algorithm to filter low-quality inputs, followed by rapid LoRA-based finetuning of Stable Diffusion models—completing the entire personalization process in under one minute. Delivered a Dockerized prototype for integration into a production web platform.</li>
      <li>Face Attribute Editing: Led the training of models to modify specific facial features (e.g., hairstyle changes). Due to limited GPU resources, focused on lightweight GAN architectures and experimented with multiple model variations to balance realism and performance. Conducted over 6 months of iterative R&D to meet quality and runtime requirements.</li>
      </ul></p>
      </div>
    </div>
  </div>

  <div class="project-block">
    <div class="project-image-alt"><img src="/assets/projects/difussion.gif" alt="Stable Diffusion project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4><a href="https://github.com/jorgemf/stable-diffusion" target="_blank">Stable Diffusion</a></h4>
      <p>This project provides an educational implementation of diffusion models, designed specifically to be trained from scratch on a single NVIDIA RTX 4090 GPU. Built using PyTorch and containerized with Docker for ease of setup and reproducibility, it serves as a clean, modular starting point for exploring the inner workings of diffusion-based generative models.<br>
      Focused on clarity and learning rather than production-ready deployment, this implementation is ideal for researchers, students, and developers who want to study diffusion training dynamics and experiment with architecture variations in a powerful but manageable GPU environment.</p>
      </div>
    </div>
  </div>

  <div class="project-block reverse">
    <div class="project-image-alt"><img src="/assets/projects/hashnerf.gif" alt="HashNeRF project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4><a href="https://github.com/jorgemf/NeRF" target="_blank">HashNeRF</a></h4>
      <p>This project is a PyTorch-based implementation of the Hash NeRF architecture, inspired by the research in neural radiance fields that utilize multi-resolution hash encoding for fast and memory-efficient 3D scene representation. Designed to reproduce and explore the core ideas from the corresponding paper, this implementation provides a clean and modular codebase suitable for both educational and experimental use.<br>
      The entire workflow — including data preprocessing, model training, and rendering — is containerized using Docker for ease of deployment and environment consistency. This makes it easy to get started on any system with minimal setup.</p>
      </div>
    </div>
  </div>

  <div class="project-block">
    <div class="project-image-alt"><img src="/assets/projects/3dpointcloud.jpg" alt="3D Point Cloud project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4>3D Point Cloud Instance Segmentation</h4>
      <p>Developed a prototype for instance segmentation of large-scale 3D point clouds generated by laser scanning of indoor environments. The system classified points into semantic objects (e.g., walls, furniture) and grouped them into instances. While the method worked well in smaller scenes, scaling was limited by the client's GPU constraints.</p>
      </div>
    </div>
  </div>

  <div class="project-block reverse">
    <div class="project-image-alt"><img src="/assets/projects/3dworldgeneration.jpg" alt="3D world generation Models project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4>3D Virtual World Generation from Text</h4>
      <p>Joined a 5-month R&D effort to train a reinforcement learning agent capable of generating 3D virtual worlds using Houdini. The agent learned to operate Houdini's GUI directly—clicking buttons and navigating menus—to construct scenes based on text prompts. Worked alongside 6 engineers on RL training, Houdini automation, and reward modeling.</p>
      </div>
    </div>
  </div>

  <div class="project-block">
    <div class="project-image-alt"><img src="/assets/projects/transformer.jpg" alt="LLM transformer project image" /></div>
    <div class="project-info-alt">
      <div class="project-info-content">
      <h4><a href="https://github.com/jorgemf/LLM-transformer" target="_blank">LLM transformer</a></h4>
      <p>This project implements a transformer-based code completion system with a primary focus on the Kotlin programming language, while remaining flexible enough to be trained on other programming languages. Designed for educational and experimental purposes, the model is optimized to train and run efficiently on a single NVIDIA RTX 4090 GPU.<br>
      Built using PyTorch and packaged in Docker, the system supports end-to-end workflows, from dataset preparation and tokenization to model training and inference. The codebase is modular, making it easy to adapt the model to other languages, integrate with IDE plugins, or experiment with different architectures (e.g., GPT-style decoders or encoder-decoder models).</p>
      </div>
    </div>
  </div>
</div>