pipeline {
	agent any
	tools {
		maven 'localMaven'
	}
	stages {
		stage ('Building') {
			steps {
				echo 'Bilding the project...'
				sh 'mvn clean package'
			}
			post {
				success {
					echo 'Archiving Artifacts...'
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
	}
}