resource "aws_security_groups" "allow_ssh" {
  name        = "allow ssh"
  description = "allow ssh inbound traffic"
  vpc_id      = module.vpc.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0", ]
    description = ""
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0", ]
    description = ""
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
}
