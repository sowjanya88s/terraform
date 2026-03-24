resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.zone_name
  type    = "A"
  ttl     = 1
  records = "${var.instances[count.index]}"."${var.zone_name}"
}