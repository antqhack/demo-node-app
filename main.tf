variable "aws_access_key" {
	type = string
}
variable "aws_secret_key" {
	type = string
}

terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "4.45.0"
		}
	}
}


provider "aws" {
	region = "us-east-2"
	access_key = var.aws_access_key 
	secret_key = var.aws_secret_key
}

resource "aws_ecr_repository" "app_ecr_repo" {
	name = "app-repo"
}
