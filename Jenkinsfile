node {
    stage('Clone') {
        git branch: 'main', credentialsId: 'github', url: 'https://github.com/youssef-khalifi/Jenkins-Build-Publish-Docker.git'
    }
    stage('Build') {
        sh 'mvn clean'
        sh 'mvn install'
    }
    stage('Test') {
        sh 'java -jar target/my-app-1.0-SNAPSHOT.jar'
    }
    stage('Slack') {
    // some block
    }
}
