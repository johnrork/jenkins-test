pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t foobar'
      }
    }
    stage('Run') {
      steps {
        sh 'docker rm -f foobar_box'
        sh 'docker run -d -p 8000:8000 --name foobar_box foobar'
      }
    }
  }
}
