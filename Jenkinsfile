pipeline {
    agent any
    
    environment {
        // Define the base URL for Jenkins
        JENKINS_URL = 'https://cb46-105-73-96-20.ngrok-free.app'
    }

    stages {
        stage('Checkout') {
            steps {
                // clean the directory
                sh "rm -rf *"
                // Checkout the Git repository
                sh "git clone https://github.com/youssef-khalifi/Jenkins-Build-Publish-Docker.git"
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean test package'
                sh "java -jar target/maven-0.0.1-SNAPSHOT.jar"
                  }
                    
                   
                }
            }
        }
        
    }
}
