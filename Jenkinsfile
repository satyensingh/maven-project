pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                echo "Starting"
                bat label: '', script: 'mvn clean package'
            }
        }
    }
}
