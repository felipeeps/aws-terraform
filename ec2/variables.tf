variable "aws-region" {
  type = string
}

variable "aws-profile" {
  type = string
}

variable "aws-vpc" {
  type = string
}

# EC2

variable "ec2-name" {
  type = string
}

variable "ec2-ami-id" {
  type = string
}

variable "ec2-subnet" {
  type = string
}

variable "ec2-key-name" {
  type = string
}

variable "ec2-instance-type" {
  type = string
}

variable "ec2-volume-type" {
  type = string
}

variable "ec2-volume-size" {
  type = number
}


# EBS

variable "ebs-name" {
  type = string
}

variable "ebs-zone" {
  type = string
}

variable "ebs-size" {
  type = number
}

variable "ebs-type" {
  type = string
}

# SG

variable "sg-name" {
  type = string
}

# TAG

variable "tag-environment" {
  type = string
}

variable "tag-project-name" {
  type = string
}

variable "tag-created-by" {
  type = string
}

variable "tag-github" {
  type = string
}
