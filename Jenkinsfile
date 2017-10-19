pipeline {
  agent none
  stages {
    stage('Test') {
      agent { dockerfile true }
      steps {
        sh 'pip install django'
      }
    }
  }
}
