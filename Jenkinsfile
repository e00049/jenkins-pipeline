pipeline {
    agent any

    // Uncomment this block if you need Docker Hub credentials
    // environment {
    //   DOCKERHUB_CREDENTIALS = credentials('docker-hub-e00049')
    // }

    stages {
        stage("SCM-Git-Preparation") {
            steps {
                script {
                    sh ''' 
                        git config --global user.name e00049
                        git config --global user.email e00049.02aug2021@gmail.com 
                    '''
                }
            }
        }

        stage('GIT Pull') {
            steps {
                git branch: 'dev', credentialsId: 'gitlab', url: 'https://github.com/e00049/jenkins-pipeline.git'
            }
        }

        stage("Docker Build and Push") {
            steps {
                script {
                    sh '''
                        echo "Hello world"
                    '''
                }
            }
        }
    }
}
