pipeline {
    agent any

    stages {
        stage('Install tox') {
            steps {
                sh 'pip install tox'
            }
        }

        stage('Flake8 Code Check') {
            steps {
                sh '''
                    mkdir -p logs
                    set -o pipefail
                    tox -e flake8_dummy 2>&1 | tee logs/flake8.log
                '''
                archiveArtifacts artifacts: 'logs/flake8.log', onlyIfSuccessful: false
            }
        }
    }
}
