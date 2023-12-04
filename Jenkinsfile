pipeline {
    agent any

    stages {
        stage('GIT Pull') {
            steps {
                git branch: 'dev', credentialsId: 'gitlab', url: 'https://github.com/e00049/jenkins-pipeline.git'
            }
        }

        stage("Docker Build and Push") {
            steps {
                script {
                    def configFile = load "config.properties"
                    def dockerBuild = configFile['docker-build']

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
