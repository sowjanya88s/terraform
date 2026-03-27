variable "env" {
    default = "dev"
}

variable "name" {
    type = string
    default = "locals"
}
 /* variable "ec2_name" {
    type = string
    default = "${var.env}-${var.Name}"
 } */

 variable "ec2_tags" {
    default = {
        Name = "locals-demo"
        Environment = "prod"
    }
 }