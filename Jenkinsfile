pipeline {
  agent any

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build React App') {
      agent {
        docker {
          image 'node:20-alpine'
          args '-u root'
        }
      }
      steps {
        sh '''
          node -v
          npm install
          npm run build
        '''
      }
    }
  }
}
