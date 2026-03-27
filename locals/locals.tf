locals {
    instance_name = "${var.name}-${var.env}"
    instance_type = "t3.micro"
    common_tags = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
ec2_final_tags = "merge(var.common_tags, var.ec2_tags)"

}