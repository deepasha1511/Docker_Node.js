pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "deepasha1511/node-app"  
        DOCKER_TAG = "latest"
    }

    stages {
        // Stage 1: Pull code from GitHub
        stage('Checkout') {
            steps {
                git branch: 'main', 
                url: 'https://github.com/deepasha1511/Docker_Node.js.git'  
            }
        }

        // Stage 2: Build Docker image
        stage('Build') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }

        // Stage 3: Push to Docker Hub
        stage('Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-creds') {
                        docker.image("${DOCKER_IMAGE}:${DOCKER_TAG}").push()
                    }
                }
            }
        }
    }
}
