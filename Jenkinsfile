pipeline {
    agent any
    
    
    environment {
        
        ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID')
        SECRET_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {

        stage('Gitcheckout'){
            steps {

                
                git branch: 'main', url: 'git@github.com:farruwasiq/kpe.git'
                
                
            }
        }

        stage('TerraformInit'){
            steps {

                
                sh "terraform init -input=false"
                sh "echo \$PWD"
                sh "whoami"
                
            }
        }

        stage('TerraformFormat'){
            steps {

                
                sh "terraform fmt -list=true -write=false -diff=true -check=true"
                
            }
        }

        stage('TerraformValidate'){
            steps {
                
                sh "terraform validate"
                
            }
        }

        stage('TerraformPlan'){
            steps {
                sh "terraform plan"
            }
        }
        
        stage('TerraformApply'){
            steps {
                sh "terraform apply -auto-approve"
            }
        }
    }
}