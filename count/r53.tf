resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.zone_name
  type    = "A"
  ttl     = 1
  records = "${aws_instance.my_instance.[count.index]}"."${var.zone_name}"
}