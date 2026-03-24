variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "sg_name" {
    type = string
    default = "terraform-sg"
}

variable "instances" {
    type = list
    default = ["mongodb", "catalogue", "redis", "mysql", "user", "cart", "shipping", "payment", "rabbitmq", "frontend"]
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_protocol" {
    type = string
    default = "-1"
}

variable "sg_tags" {
    type = map
    default = {
      Name = "terraform-sg"  
    }
}
variable "zone_id" {
    type = string
    default = "Z082049010RMR2FN1A4VI"
}
variable "zone_name" {
    type = string
    default = "sowjanya.fun"
}