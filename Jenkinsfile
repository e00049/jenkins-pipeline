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
                    def readProps = readProperties file: 'config.properties'
                    def scmPreparation = readProps['scm-preparation']
                    if (scmPreparation == "yes") {                    
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
                    def readProps = readProperties file: 'config.properties'
                    def dockerBuild = readProps['docker-build']
                    if (dockerBuild == "yes") {                    
                        echo "Performing Docker build stage 00000000003"
                        // Add your Docker build steps here
                    } else {
                        echo "Skipped Docker Build"                            
                    }
                }
            }
        }
    }
}
