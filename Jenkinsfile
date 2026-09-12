pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                sh 'python -m pip install --upgrade pip flake8'
            }
        }

        stage('CodeCheck') {
            steps {
                sh 'make code_check'
            }
        }
    }
}
