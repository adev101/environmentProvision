pipeline{
	agent any
	
	environment{
		AWS_ACCESS_KEY_ID = credentials(AWS_ACCESS_KEY_ID)
		AWS_SECRET_ACCESS_KEY = credentials(AWS_SECRET_ACCESS_KEY)
		AWS_REGION = 'ap-south-1'
	}
	
	
	stages{
		stage('Checkout'){
			steps{
				git branch: 'main', url: 'https://github.com/adev101/environmentProvision.git'
			}
		}
		
		stage('Terraform Init'){
			steps{
				sh 'terraform init'
			}
		}
		
		stage('Terraform Plan'){
			steps{
				sh 'terraform plan'
			}
		}
		
		stage('Terraform Apply'){
			steps{
				sh 'terraform apply -auto-approve'
			}
		}

	
	}
}
