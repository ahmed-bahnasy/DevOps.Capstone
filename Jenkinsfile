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

 stage("Push Dcoker image") {
      steps {
        withDockerRegistry([url: "", credentialsId: "dockerCredentials"]) {
          sh 'docker login'  
          sh 'docker tag app ahmedbahnasy/capstone:app'  
          sh 'docker push ahmedbahnasy/capstone:app'  
        }
      }
    }

    stage('Deploy Container') {
      steps {
        withAWS(region:'us-west-2',credentials:'user-aws') {
          sh 'aws eks update-kubeconfig --name devops-capstone-cluster'
          sh 'kubectl config use-context arn:aws:eks:us-west-2:989307792660:cluster/devops-capstone-cluster'
          

        }
      }
    }


  }
}
