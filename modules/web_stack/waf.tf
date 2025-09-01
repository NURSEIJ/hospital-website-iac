resource "aws_wafv2_web_acl" "website" {
  count       = var.enable_waf ? 1 : 0
  name        = "hospital-website-waf-${var.environment}"
  scope       = "CLOUDFRONT"
  description = "WAF protection for hospital website"

  default_action {
    allow {}
  }

  rule {
    name     = "AWSManagedRulesCommonRuleSet"
    priority = 1
    
    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesCommonRuleSet"
      sampled_requests_enabled   = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "hospital-waf-${var.environment}"
    sampled_requests_enabled   = true
  }
}