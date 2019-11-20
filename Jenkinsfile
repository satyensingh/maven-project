pipeline {
    agent any
    tools {
        jdk 'localJDK'
        maven 'localMaven'
    }
    stages{
        stage('Maven-Build'){
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker-Build'){
            steps {
                sh "docker build -t webapp:${env.BUILD_ID} ."
            }
        }
    }
}
