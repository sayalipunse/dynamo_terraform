pipeline {
    agent any

    environment {
        ENTER_CRED = credentials('jenkins_aws_cred')
    }

    stages {
        stage('terraform init') {
            steps {
            sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
            sh 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
            sh 'terraform apply --auto-approve'
            }
        }
    }
}