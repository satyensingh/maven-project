pipeline {
    agent any

    parameters {
         string(name: 'tomcat_dev', defaultValue: '13.234.113.57', description: 'Staging Server')
         string(name: 'tomcat_prod', defaultValue: '13.235.16.99', description: 'Production Server')
    }

    triggers {
         pollSCM('* * * * *')
     }

stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }

        stage ('Deployments'){
            parallel{
                stage ('Deploy to Staging'){
                    steps {
                        sh "scp -i /home/cloud_user/.ssh/id_rsa.pub **/target/*.war cloud_user@${params.tomcat_dev}:/home/cloud_user/apache-tomcat-8.5.42/webapps"
                    }
                }

                stage ("Deploy to Production"){
                    steps {
                        sh "scp -i /home/cloud_user/.ssh/id_rsa.pub **/target/*.war cloud_user@${params.tomcat_prod}:/home/cloud_user/apache-tomcat-8.5.42/webapps"
                    }
                }
            }
        }
    }
}
