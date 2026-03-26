resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.my_instance[count.index].private_ip]
}
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "roboshop-${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.my_instance[index(var.instances, "frontend")].private_ip]
}
