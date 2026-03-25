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
        catalogue = "t2.micro"
        redis = "t3.small"
    }
}

/* variable "instances" {
    type = toset(instances)
    default = ["mongodb", "redis"]
} */