pipeline {
    agent any

    environment {
        scannerHome = tool 'sonar_scanner'
    }

    tools {
        nodejs "nodejs"
        dockerTool "docker"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }
        stage('Sonarqube Analysis') {
            steps {
                echo 'Testing..'
                withSonarQubeEnv('SonarQube') {
                    sh '${scannerHome}/bin/sonar-scanner'
                }
            }
        }
        stage('Kubernetes Deployment') {
            steps {
                echo 'Deploying..'
            }
        }
    }
}