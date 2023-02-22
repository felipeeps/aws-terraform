variable "ingressports" {
  type    = list(number)
  default = [22]
}

resource "aws_security_group" "ec2-sg" {
  name   = var.sg-name
  vpc_id = var.aws-vpc

  dynamic "ingress" {
    for_each = var.ingressports
    content {
      protocol    = "tcp"
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name        = var.sg-name
    environment = var.tag-environment
    projectName = var.tag-project-name
    createdBy   = var.tag-created-by
    github      = var.tag-github
  }
}
