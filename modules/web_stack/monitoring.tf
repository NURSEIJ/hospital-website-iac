resource "aws_cloudwatch_metric_alarm" "high_4xx" {
  alarm_name          = "hospital-website-4xx-errors-${var.environment}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "4xxErrorRate"
  namespace           = "AWS/CloudFront"
  period              = "300"
  statistic           = "Sum"
  threshold           = "50"
  alarm_description   = "Triggers when 4XX errors exceed 50 in 5 minutes"

  dimensions = {
    DistributionId = aws_cloudfront_distribution.website.id
    Region         = "Global"
  }
}