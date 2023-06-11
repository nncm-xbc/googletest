pipeline {
    agent any

    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-credentials')
	}

    stages {
	stage('Previous Images Cleaning') {
		steps {
			echo 'Deleting previous images, which have been uploaded to DockerHub'
			sh 'docker system prune -a --force' 
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
        stage('Build image') {
            steps {
                echo 'Building..'
                sh 'chmod +x Scripts/docker.sh'
                sh 'Scripts/docker.sh'
            }
        }
        stage('Login in docker hub') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_USR'
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW'
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
	}
        stage('Push to docker hub') {
			steps {
				sh 'docker tag googletest $DOCKERHUB_CREDENTIALS_USR/googletest:latest'
				sh 'docker push $DOCKERHUB_CREDENTIALS_USR/googletest:latest'
			}
	}
    }
}
