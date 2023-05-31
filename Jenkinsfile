pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'chmod +x Scripts/build.sh'
                sh 'Scripts/build.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'chmod +x Scripts/test.sh'
                sh 'Scripts/test.sh'
            }
        }
        stage('Docker Image') {
            steps {
                echo 'Building Docker Image..'
                sh 'chmod +x Scripts/docker.sh'
                sh 'Scripts/docker.sh'
            }
        }
    }
}