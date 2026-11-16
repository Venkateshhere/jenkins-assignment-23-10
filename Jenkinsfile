pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['plan', 'apply', 'destroy'],
            description: 'Select the Terraform action to execute'
        )
    }

    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Action') {
            steps {
                script {
                    if (params.ACTION == 'plan') {
                        sh 'terraform plan'
                    } else if (params.ACTION == 'apply') {
                        sh 'terraform apply -auto-approve'
                    } else if (params.ACTION == 'destroy') {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}

