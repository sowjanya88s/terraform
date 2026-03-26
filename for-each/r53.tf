resource "aws_route53_record" "www" {
  for_each = aws_instance.my_instance
  zone_id = var.zone_id
  name    = "${each.key}.${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}

resource "aws_route53_record" "www" {
  
  zone_id = var.zone_id
  name    = "roboshop.${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.my_instance, "frontend").private_ip]
}

