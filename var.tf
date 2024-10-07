variable "aws_region" {
  description = "The AWS region to create things in."
  default     = ""
}


variable "AWS_ACCESS_KEY_ID" {
 description = "AWS access key"
  type        = string
  default     = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "my-jenkins-security-group"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "TestInstance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-0dee22c13ea7a9a67"
}
