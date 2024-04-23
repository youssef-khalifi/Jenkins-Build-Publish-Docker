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
    stage('Notify Slack'){
        steps {
            script {
                def artifactPath = "/Work/Jenkins-Build-Publish-Docker/target/my-app-1.0-SNAPSHOT.jar"
                def artifactURL = "${env.JENKINS_URL}/job/${env.JOB_NAME}/${env.BUILD_NUMBER}/artifact/${artifactPath}"

                //Add channel name
                slackSend channel: 'jenkins',
                message: "Un nouveau build Java est disponible: ---> Resultat: ${currentBuild.currentResult}, Job: ${env.JOB_NAME}, Build: ${env.BUILD_NUMBER} \n <${artifactURL}|Cliquer ici pour télécharger>"
            }
        }
    }
}