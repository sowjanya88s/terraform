variable "ingress_rules" {
    default = [
        {
    port = 22
    description = "allow 22 port"
},
{
    port = 3306
    description = "allow 3306 port"
},
{
    port = 80
    description = "allow 80 port"
},
    ]
}

variable "zone_id" {
    type = string
    default = "Z082049010RMR2FN1A4VI"
}
variable "zone_name" {
    type = string
    default = "sowjanya.fun"
}
   variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        catalogue = "t3.micro"
        redis = "t3.small"
    }
} 