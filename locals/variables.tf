variable "env" {
    default = "dev"
}

variable "ec2_tags" {
    type = string
    default = "locals-instance"
}

variable "Name" {
    type = string
    default = "locals"
}
 /* variable "ec2_name" {
    type = string
    default = "${var.env}-${var.Name}"
 } */