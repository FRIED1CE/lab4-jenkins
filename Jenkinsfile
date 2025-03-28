pipeline{
    agent any

    stages {
        stage('prep') {
                steps {
                    sh 'chmod +x ./cleanup.sh'
                    sh './cleanup.sh'
            }
        }
        stage('image build') {
            steps {
                sh 'docker build -t node-image .'
            }
        }
        stage('run container') {
            steps {
                sh 'docker run -d -p 5000:5000 --name node-container node-image'
            }
        }
    }
}