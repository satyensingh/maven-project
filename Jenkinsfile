pipeline {
    agent any
    tools {
        jdk 'localJDK'
        maven 'localMaven'
    }
    stages{
        stage('Build'){
            steps {
                echo "Starting"
                bat label: '', script: 'mvn clean package'
            }
        }
    }
}
