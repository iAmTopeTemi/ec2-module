
variable "instance_type" {
    description = "instance types for dev prod and sbx"
    type = list(any)
    default = [ "t2.micro", "t2.medium", "t2.large" ]
  
}

variable "public_ip" {
    description = "if set to true, create public ip"
    type = bool 
}

variable "az_s" {
    description = "different azs for High availability"
    type = list
    default = ["us-east-1a", "us-east-1b", "us-east-1d", "us-east-1e", "us-east-1f"]
  
}

variable "delete_ebs_on_termination" {
    description = "if set to true, encrypt ebs"
    type = bool

  
}

variable "ebs_volume_size" {
    description = "size in relation to account"
    type = number
    default = 10
  
}