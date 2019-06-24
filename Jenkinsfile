pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
                sh 'whoami'
                sh "docker build -t webapp:${env.BUILD_ID} ."
            }
        }
    }
}
