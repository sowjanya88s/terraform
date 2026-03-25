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