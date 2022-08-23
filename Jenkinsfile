pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Kubernetes Deployment') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}