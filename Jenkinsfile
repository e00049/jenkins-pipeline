pipeline {
    agent any

    stages {
        stage('Git Pull') {
            steps {
                script {
                    echo "Checking out code from the repository"
                    git branch: 'dev', credentialsId: 'gitlab', url: 'https://github.com/e00049/jenkins-pipeline.git'
                }
            }
        }

        stage('SCM Preparation Stage') {
            steps {
                script {
                    def readProb = readProperties file: 'config.properties'
                    if ("${readProb['scm-preparation']}" == "yes") {                    
                        echo "Performing SCM Preparation"
                        // Add your SCM preparation steps here
                    } else {
                        echo "Skipped SCM Preparation"                            
                    }
                }
            }
        }  

        stage('Docker build Stage') {
            steps {
                script {
                    def readProb = readProperties file: 'config.properties'
                    if ("${readProb['docker-build']}" == "yes") {                    
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
