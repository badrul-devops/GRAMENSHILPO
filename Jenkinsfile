pipeline{
    agent any
    stages{
        stage('git checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/badrul-devops/GRAMENSHILPO.git']])
            }
        }
        stage('docker build'){
            steps{
                sh 'docker build -t badrul11/gramenshilpo:latest .'
            }
        }
        stage ('docker image run'){
            steps{
                sh 'docker run -d -p 8000:8080 badrul11/gramenshilpo:latest'
            }
        }
    }
    
}