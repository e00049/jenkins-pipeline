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
                    def configFile = load "config.properties"
                    def scmPreparation = configFile['scm-preparation']
                    def dockerBuild = configFile['docker-build']

                    if (scmPreparation == "yes") {
                        echo "Performing SCM Preparation"
                        // Add your SCM preparation steps here
                    } else {
                        echo "Skipped SCM Preparation"                            
                    }

                    if (dockerBuild == "yes") {
                        echo "Performing Docker build"
                        // Add your Docker build steps here
                    } else {
                        echo "Skipped Docker Build"                            
                    }
                }
            }
        }   
    }
}
