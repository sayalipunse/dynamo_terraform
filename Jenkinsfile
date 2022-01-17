pipeline {
    agent any

    environment {
        ENTER_CRED = credentials('jenkins_aws_cred')
    }
    
    stages {
        stage('terraform init') {
            steps {
            sh '/usr/local/bin/terraform init'
            }
        }
        stage('terraform plan') {
            steps {
            sh '/usr/local/bin/terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
            sh '/usr/local/bin/terraform apply --auto-approve'
            }
        }
    }
}