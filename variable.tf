variable "region" {
  type    = string
  default = "us-east-1"
}
variable "ami_id" {
  type = map(any)
  default = {
    us-east-1    = "ami-04505e74c0741db8d"
    eu-west-2    = "ami-0015a39e4b7c0966f"
    eu-central-1 = "ami-0d527b8c289b4af7f"
  }
}
variable "key-name" {
  type    = string
  default = "AWS Ubuntu"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
