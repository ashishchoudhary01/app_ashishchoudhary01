pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }
        stage('Test case execution') {
            steps {
                echo 'Testing..'
                sh 'npm test'
            }
        }
        stage('Kubernetes Deployment') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}