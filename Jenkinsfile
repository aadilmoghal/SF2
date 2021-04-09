pipeline {
  agent any
  stages {
    stage('Building') {
      steps {
        sh './jenkins-scripts/setup.sh'
      }
    }
    stage('Pushing') {
      steps {
        sh './jenkins-scripts/push.sh'
      }
    }
    stage('Deployments') {
      steps {
        sh './jenkins-scripts/dep.sh'
      }
    }
  }
}
