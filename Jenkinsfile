pipeline {
  agent {
    node {
      label 'workstation'
    }
  }
  stages {
    stage('Docker build') {
     steps {
       sh 'docker build -t docker.io/tejaswinidockerhub/init-container-parameters-image .'
       }
     }
    stage('Docker push') {
      steps {
        sh 'docker push docker.io/tejaswinidockerhub/init-container-parameters-image'
      }
    }
  }
}
