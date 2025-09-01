output "website_url" {
  description = "Public URL of the website"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "s3_bucket_name" {
  description = "Name of the origin S3 bucket"
  value       = aws_s3_bucket.website.id
}

output "cloudfront_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.website.id
}