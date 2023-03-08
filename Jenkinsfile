node{
    
    stage('code checkout'){
    git 'https://github.com/StaragileDevops/Terrakube'
    }
    
    stage('terraform init'){
    sh 'terraform init'
    }
    
    stage('terraform plan'){
        withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID')]) {
            withCredentials([string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
    
    sh 'terraform plan'
    
            }
        }
    }
    
    stage('terraform apply'){
    sh 'terraform apply --auto-approve'
    }
    
    /*stage('terraform destroy'){
        sh 'terraform destroy --auto-approve'
    }*/
    
    
}
