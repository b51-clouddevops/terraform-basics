resource "aws_route53_record" "component" {
  zone_id = "Z00636481OT8FNJLH82AQ"
  name    = "${var.COMPONENT}-dev.robot.internal"
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot.private_ip]
}