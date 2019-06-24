pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Now Creating Image...'
                    sh 'docker build -t webapp:${env.BUILD_ID} .'
                }
            }
        }
    }
}
