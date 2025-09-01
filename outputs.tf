output "website_url" {
  description = "Public URL of the website"
  value       = module.hospital_website.website_url
}

output "s3_bucket_name" {
  description = "Name of the origin S3 bucket"
  value       = module.hospital_website.s3_bucket_name
}

output "cloudfront_id" {
  description = "CloudFront distribution ID"
  value       = module.hospital_website.cloudfront_id
}