variable "common_tags" {
    default = {
    Environment = "dev"
    Project = "roboshop"
    Terraform = "true"
    }
}
variable "ec2_tags" {
    default = {
    Name = "terraform-practice"
   }
}
variable "sg_tags" {
    default = {
    Name = "terraform"
    } 
}