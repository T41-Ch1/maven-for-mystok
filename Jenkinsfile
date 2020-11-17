pipeline {
  agent none
  stages {
    stage('Build war') {
      agent {
        docker {
          image 'maven:3-alpine'
          args '-v /root/.m2:/root/.m2'
        }
      }
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('Build Container Image') {
      agent any
      steps {
        sh 'docker build -t dekabitasp/mystok-app-recipeservlet-with-reverse-proxy-with-mvn-with-jenkins-with-jenkins:1.0 . --no-cache'
        sh 'docker tag dekabitasp/mystok-app-recipeservlet-with-reverse-proxy-with-mvn-with-jenkins-with-jenkins:1.0 dekabitasp/mystok-app-recipeservlet-with-reverse-proxy-with-mvn-with-jenkins-with-jenkins:latest'
      }
    }
  }
}
