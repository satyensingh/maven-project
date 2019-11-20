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
        stage('Login-to-Docker-Hub'){
            steps {
                sh 'docker login -u satyendrasingh -p Password@123'
            }
        }
        stage('Tagging-Docker-Image'){
            steps {
                sh "docker tag webapp:${env.BUILD_ID} satyendrasingh/webapp:${env.BUILD_ID}"
            }
        }
    }
}
