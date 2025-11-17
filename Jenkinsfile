pipeline {
    agent any

    tools {
        terraform 'terraform'
    }

    parameters {
        choice(
            name: 'ENV',
            choices: ['Dev', 'Test', 'Prod'],
            description: 'Select the environment for deployment'
        )

        choice(
            name: 'COMMAND',
            choices: ['init', 'fmt', 'validate', 'plan', 'apply', 'destroy'],
            description: 'Select the Terraform command you want to run'
        )
    }

    stages {

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout Repo') {
            steps {
                git branch: 'main',
                    credentialsId: 'Git-Credentials',
                    url: 'https://github.com/Murali-Kaspa/Terraform_Complete_Prep.git'
            }
        }

        stage('Terraform Format') {
            steps {
                withAWS(credentials: 'Aws-Creds', region: 'ap-south-1') {
                    sh 'terraform fmt'
                }
            }
        }

        stage('Terraform Init') {
            steps {
                withAWS(credentials: 'Aws-Creds', region: 'ap-south-1') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                withAWS(credentials: 'Aws-Creds', region: 'ap-south-1') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withAWS(credentials: 'Aws-Creds', region: 'ap-south-1') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Approve Apply') {
            steps {
                script {
                    timeout(time: 5, unit: 'MINUTES') {
                        input message: "Do you want to Apply the Terraform changes?"
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withAWS(credentials: 'Aws-Creds', region: 'ap-south-1') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
