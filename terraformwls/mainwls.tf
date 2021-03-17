# Configure the back-end state

terraform {
	backend "s3" {
		bucket = "wls-config"
		key    = "Terraform/wlsvm_UUID.tfstate"
	}
}

#Configure the "provider" where the images will go

provider "aws" {
    access_key = var.aws_access
    secret_key = var.aws_secret
    region = var.region
}

resource "aws_instance" "wlsvm_UUID" {

        ami = "PackerAnsible-new"
        instance_type = var.ec2Type
        availability_zone = var.availability_zone
        vpc_security_group_ids = var.vpc_security_group_ids
        subnet_id = var.subnet_id
        tags = var.tags
        iam_instance_profile = "Demo_wls-dev"
		ipv6_address_count = 1
}

output "ip" {
        value = aws_instance.wlsvm_UUID.private_ip
}
output "id" {
        value = "wlsvm_UUID"
}
output "AWS_Instance" {
		value = aws_instance.wlsvm_UUID.id
}
