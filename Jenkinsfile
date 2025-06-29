


pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
    git branch: 'main', url: 'https://github.com/Foxfce/web-jenkin-docker-1.git'
  }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-web-cicd .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker rm -f my-web || exit 0'
                sh 'docker run -d --name my-web -p 8089:80 my-web-cicd'
            }
        }
    }
}