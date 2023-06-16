pipeline:
  agent:
    any 
  stages:
    - stage: Checkout
      steps:
        - name: Git Pull
          git:
            url: 'https://github.com/e00049/jenkins-pipeline.git'
            branch: 'main'
    - stage: Build
      steps:
        - name: Docker Build
          script:
            - docker build -t docker.io/e00049/ubuntu:v4.0.0 .
            
