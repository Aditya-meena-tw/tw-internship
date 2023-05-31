pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Install dependencies
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                // Run unit tests
                sh 'python3 manage.py test'
            }
        }
         stage('Deploy') {
            steps {
                echo "deploying..........."
            }
        }
    }
}