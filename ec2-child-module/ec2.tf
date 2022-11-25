
data "aws_ami" "ami_id" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20221103.3-x86_64-gp2"]
  }
}



module "ec2" {
  source = "git::https://github.com/iAmTopeTemi/ec2-module.git?ref=v1.0.0"

  instance_type = ["t2.micro", "t2.medium", "t2.large"]
  public_ip = true
  delete_ebs_on_termination = true
   
}

