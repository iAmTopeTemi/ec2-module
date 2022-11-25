# ec2-module

## usage

module "ec2" {
  source = "git::https://github.com/iAmTopeTemi/ec2-module.git?ref=v1.0.0"

  instance_type = ["t2.micro", "t2.medium", "t2.large"]
  public_ip = true
  delete_ebs_on_termination = true
   
}

