pipeline {
  agent any
  stages {
    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e --drop-empty-elements no ./*.html'
      }
    }

 stage("Build Docker image") {
      steps {
        sh 'docker build --tag=app .'
      }
    }



  }
}
