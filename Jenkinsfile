pipeline {
  agent {
    docker { image 'debian' } 
  }
  stages {
    stage('Test') {
      steps {
        sh 'echo "Hello world"'
      }
    }
  }
}
