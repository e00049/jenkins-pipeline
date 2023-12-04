pipeline {
    agent any

    stages {
        stage('GIT Pull') {
            steps {
                git branch: 'dev', credentialsId: 'gitlab', url: 'https://github.com/e00049/jenkins-pipeline.git'
            }
        }        
        stage('Read Properties') {
            steps {
                script {
                    def properties = readProperties file: 'config.properties'

                    def property1 = properties['key1']
                    def property2 = properties['key2']

                    echo "Property 1: ${property1}"
                    echo "Property 2: ${property2}"
                }
            }
        }
    }
}
