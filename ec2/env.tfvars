aws-region  = "us-east-1"
aws-profile = "default"

ip-aws-vpc = "vpc-xxx"

sg-name = "ec2-sg"

# AWS EC2 Instance parameters

ec2-name          = "srv-ec2"
ec2-ami-id        = "ami-xxx"
ec2-subnet        = "subnet-xxx"
ec2-key-name      = "key-name"
ec2-instance-type = "t2.medium"
ec2-volume-type   = "gp3"
ec2-volume-size   = "20"


# AWS EBS Volume parameters

ebs-name = "ebs-ec2"
ebs-zone = "us-east-1a"
ebs-size = "20"
ebs-type = "gp3"

# AWS Group Intelipost Tags

tag-environment  = "production"
tag-project-name = "support-squad"
tag-created-by   = "squad-sre"
tag-github       = "github.com/your-github"
