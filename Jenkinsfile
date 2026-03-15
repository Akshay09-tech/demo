pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/Akshay09-tech/demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t python-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 python-app'
            }
        }

    }
}
