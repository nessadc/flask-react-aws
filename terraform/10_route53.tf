data "aws_route53_zone" "zone" {
  name = "nessadc.com."
}


resource "aws_route53_record" "flask-aws-record" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "flask-react-aws"
  type    = "A"

  alias {
    name                   = data.terraform_remote_state.prod.outputs.dns_name
    zone_id                = data.terraform_remote_state.prod.outputs.zone_id
    evaluate_target_health = true
  }
}