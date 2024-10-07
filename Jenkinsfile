pipeline{
	agent any
	
	environment{
		AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
		AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
		AWS_REGION = 'ap-south-1'
	}

	parameters {
	        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
	        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select the action to perform')
    	}
	
	stages{
		stage('Checkout'){
			steps{
				git branch: 'main', url: 'https://github.com/adev101/environmentProvision.git'
			}
		}
		
		stage('Terraform Init'){
			steps{
				sh 'cd src'
				sh 'pwd'
				sh 'terraform init'
			}
		}
		
		stage('Terraform Plan'){
			steps{
				sh 'cd src'
				sh 'pwd'
				sh 'terraform plan'
			}
		}
		
		stage('Terraform Apply/ Destroy'){
			steps{
				
				sh 'cd src'
				sh 'terraform ${action} -auto-approve'
			}
		}

	
	}
}
