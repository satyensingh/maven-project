pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'echo Starting'
                sh 'mvn clean package'
                sh 'echo "mvn clean package done"'
                sh 'pwd'
                sh 'whoami'
                sh "docker build -t webapp:${env.BUILD_ID} ."
                sh 'docker login -u satyendrasingh -p Password@123'
                sh "docker tag webapp:${env.BUILD_ID} satyendrasingh/webapp:${env.BUILD_ID}"
                sh "docker push satyendrasingh/webapp:${env.BUILD_ID}"
            }
        }
    }
}
