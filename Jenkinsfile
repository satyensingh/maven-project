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
        stage('Tagging-Docker-Image'){
            steps {
                sh "docker tag webapp:${env.BUILD_ID} satyendrasingh/webapp:${env.BUILD_ID}"
            }
        }
        stage('Pushing-Image-to-DockerHub'){
            steps {
                sh 'echo Pushed'
            }
        }
    }
}
