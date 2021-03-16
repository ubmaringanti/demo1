# aws_access
variable "aws_access" {
        type = string
}

# name
variable "resourceName" {
        type = string
}

# aws_secret
variable "aws_secret" {
        type = string
}

# ami value
variable "ami" {
        type = string
}

# application
variable "application" {
        type = string
}

# subtype
variable "subtype" {
        type = string
}

# Region
variable "region" {
        default = "us-east-1"
}

# availability_zone
variable "availability_zone" {
        default = "us-east-1a"
}

# vpc_security_group_ids
variable "vpc_security_group_ids" {
        type = set(string)
        default = ["**-*********", "**-*********"]
}

# subnet_id
variable "subnet_id" {
        type = string
        default = "subnet-*******"
}

# owner
variable "Owner" {
        type = string
        default = "mw_user"
}

# Type
variable "Type" {
        type = list
        default = [ "Agent", "Server" ]
}

#EC2 Instance Type
variable "ec2Type" {
	type = string
        default = "t2.micro"
}

# Tags
variable "tags" {
        type = map(string)
        default = {
         "Name" = "defaultName"
         "Owner" = "mw_user"
         "type" = "defaultType"
         "subtype" = "defaultSubtype"
         "Role" = "defaultRole"
}
}
