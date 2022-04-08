resource "aws_instance" "ubuntu" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  # Public Subnet assign to instance
  subnet_id = element(module.vpc.public_subnets, 0)
  # Security group assign to instance
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  # key name
  key_name = var.key-name

  tags = {
    Name = "Ec2-tfcloud-demo"
  }
}

