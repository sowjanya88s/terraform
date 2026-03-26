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
        frontend = "t3.micro"
    }
} 

/* variable "instances" {
    type = list
    default = ["mongodb", "redis"]
} */