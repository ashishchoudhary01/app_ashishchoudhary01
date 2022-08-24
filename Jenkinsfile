pipeline {
    agent any

    environment {
        scannerHome = tool 'SonarQubeScanner'
    }

    tools {
        nodejs "nodejs"
        // dockerTool "docker"
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
                withSonarQubeEnv('Test_Sonar') {
                    sh '${scannerHome}/bin/sonar-scanner'
                }
            }
        }
        // stage('Docker build') {
        //     steps {
        //         sh 'docker build -t ashishchoudhary01nagarro/i-ashishchoudhary01-develop:latest --no-cache .'
        //     }
        // }
        // untested code - not part of the assignment
        // stage('Docker push to Dockerhub') {
        //     steps {
        //         script {
        //             withDockerRegistry(toolName: 'docker') {
        //                 sh 'docker push ashishchoudhary01nagarro/i-ashishchoudhary01-develop:latest'
        //             }
        //         }
        //     }
        // }
        stage('Kubernetes Deployment') {
            steps {
                echo 'Deploying..'
                sh 'kubectl apply -f deployment-definition.yaml --namespace=kubernetes-cluster-ashishchoudhary01'
            }
        }
    }
}