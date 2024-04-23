node {
    environment {
        JENKINS_URL = 'https://466a-105-73-96-20.ngrok-free.app'
    }
    stage('Clone') {
    git branch: 'main', credentialsId: 'github', url: 'https://github.com/youssef-khalifi/Jenkins-Build-Publish-Docker.git'
    }
    stage('Build') {
    sh 'mvn clean'
    sh 'mvn install'
    }
    stage('Run') {
    sh 'java -jar target/my-app-1.0-SNAPSHOT.jar'
    }
}
