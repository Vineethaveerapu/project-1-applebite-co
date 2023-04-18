pipeline {
    agent {
        label 'agent1'
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'git'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'build section'
                // Add your build steps here, e.g., "sh 'make'"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy'
                // Add your deployment steps here, e.g., "sh 'make deploy'"
            }
        }
    }
}
