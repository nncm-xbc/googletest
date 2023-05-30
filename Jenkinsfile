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
                sh 'cd build'
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}