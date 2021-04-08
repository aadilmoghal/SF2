pipeline {
  agent any
  environment{
    SECRET_KEY=credentials('SECRET_KEY')
  }
  stages {
    stage('Building') {
      steps {
        // sh 'chmod +x ./jenkins-scripts/setup.sh'
        sh './jenkins-scripts/setup.sh'
      }
    }
    stage('Pushing') {
      steps {
        sh 'chmod +x ./jenkins-scripts/push.sh'
        sh './jenkins-scripts/push.sh'
      }
    }
    stage('Deployments') {
      steps {
        // sh 'chmod +x ./jenkins-scripts/dep.sh'
        sh './jenkins-scripts/dep.sh'
      }
    }
  }
}
