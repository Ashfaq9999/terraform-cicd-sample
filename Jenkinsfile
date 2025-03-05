pipeline {
    agent any

    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select Terraform Action')
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Ashfaq9999/terraform-cicd-sample.git'
            }
        }
        
        stage('init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('apply') {
            steps {
                sh "terraform ${params.action} -auto-approve"
            }
        }
    }
}
