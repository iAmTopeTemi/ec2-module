
output "public_ip" {
    value = aws_instance.ec2_test[*].public_ip
  }