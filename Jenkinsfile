pipeline {
    agent any

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
                    def readProps = readProperties file: 'config.properties'
                    def scmPreparation = readProps['scm-preparation']
                    def dockerBuild = readProps['docker-build']

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
