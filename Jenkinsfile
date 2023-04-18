pipeline {
  agent {
    label 'agent1'
  }

  environment {
    DOCKER_REGISTRY = "docker.io"
    DOCKER_USERNAME = credentials('docker-hub-username')
    DOCKER_PASSWORD = credentials('docker-hub-password')
    DOCKER_IMAGE_NAME = "applebite"
    DOCKER_IMAGE_TAG = 'latest'
    DOCKERFILE_PATH = "Dockerfile"
  }

  stages {
    stage('Checkout git') {
      steps {
        echo 'git'
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        echo 'build section'
        try {
          sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} -f ${DOCKERFILE_PATH} ."
        } catch (err) {
          currentBuild.result = 'FAILURE'
          error "Failed to build Docker image: ${err}"
        }
      }
    }

    stage('Push Docker Image') {
      steps {
        try {
          sh "docker login ${DOCKER_REGISTRY} -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
          sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
        } catch (err) {
          currentBuild.result = 'FAILURE'
          error "Failed to push Docker image: ${err}"
        }
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy'
      }
    }
  }

  post {
    always {
      echo "Build ${currentBuild.result}"
    }

    success {
      echo "Build succeeded"
    }

    failure {
      echo 'Build failed'
    }
  }
}
