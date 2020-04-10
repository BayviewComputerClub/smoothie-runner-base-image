pipeline {
    environment {
        registry = "bsscc/smoothie-runner-base-image"
        registryCredential = 'dockerhub-bsscc'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Building image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":latest"
                }
            }

        }
        stage('Deploy Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
