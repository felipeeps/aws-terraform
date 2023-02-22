resource "aws_instance" "ec2" {
  ami                    = var.ec2-ami-id
  instance_type          = var.ec2-instance-type
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  key_name               = var.ec2-key-name
  subnet_id              = var.ec2-subnet

  associate_public_ip_address = false


  root_block_device {
    volume_type = var.ec2-volume-type
    volume_size = var.ec2-volume-size
  }

  tags = {
    Name        = var.ec2-name
    environment = var.tag-environment
    projectName = var.tag-project-name
    createdBy   = var.tag-created-by
    github      = var.tag-github
  }
}

resource "aws_ebs_volume" "ebs-ec2-suuport-volume" {
  availability_zone = var.ebs-zone
  size              = var.ebs-size
  type              = var.ebs-type

  tags = {
    Name        = var.ebs-name
    environment = var.tag-environment
    projectName = var.tag-project-name
    createdBy   = var.tag-created-by
    github      = var.tag-github
  }
}

resource "aws_volume_attachment" "ebs-volume-attachment" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.ebs-ec2-suuport-volume.id
  instance_id = aws_instance.ec2.id
}
