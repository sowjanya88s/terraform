locals {
    ec2_tags = "${var.env}-${var.Name}"
    instance_type = "t3.micro"

}