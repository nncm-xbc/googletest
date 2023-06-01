pipeline {
    agent any

    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-credentials')
	}

    stages {
        stage('Build image') {
            steps {
                echo 'Building..'
                sh 'chmod +x Scripts/docker.sh'
                sh 'Scripts/docker.sh'
            }
        }
        stage('Login in docker hub') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
        stage('Push to docker hub') {
			steps {
				sh 'docker nncmxbc/googletest:latest'
			}
		}
        stage('Normal Build') {
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
    }
}