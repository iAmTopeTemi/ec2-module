
data "aws_ami" "ami_id" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20221103.3-x86_64-gp2"]
  }
}

data "aws_key_pair" "key_name" {

  filter {
    name   = "key-pair-id"
    values = ["key-01217c0cc2df870f4"]
  }
}



resource "aws_instance" "ec2_test" {
   count = length(var.az_s)
  ami           = data.aws_ami.ami_id.id
  instance_type = element(slice(var.instance_type, 0,3), count.index)
  associate_public_ip_address = var.public_ip
  key_name = data.aws_key_pair.key_name.key_name
  availability_zone = element(slice(var.az_s, 0,3), count.index)

  ebs_block_device {
    delete_on_termination = var.delete_ebs_on_termination
    device_name = "prod"
    volume_size = var.ebs_volume_size
    
  }

  tags = {
    Name = "HelloWorld"
  }
}