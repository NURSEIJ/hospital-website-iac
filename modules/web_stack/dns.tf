data "aws_route53_zone" "selected" {
  count        = var.enable_https ? 1 : 0
  name         = var.domain_name
  private_zone = false
}

resource "aws_route53_record" "website" {
  count   = var.enable_https ? 1 : 0
  zone_id = data.aws_route53_zone.selected[0].zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.website.domain_name
    zone_id                = aws_cloudfront_distribution.website.hosted_zone_id
    evaluate_target_health = false
  }
}