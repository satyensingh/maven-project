pipeline {
    agent any
    tools {
        maven: 'localMaven'
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
