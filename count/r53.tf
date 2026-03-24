resource "aws_route53_record" "www" {
    count = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.my_instance[count.index].private_ip]
}