output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "cloudfront_domain" {
  value = one([for distribution in values(aws_cloudfront_distribution.app_distribution) : distribution.domain_name])
}

output "cloudfront_distribution_id" {
  value = one([for distribution in values(aws_cloudfront_distribution.app_distribution) : distribution.id])
}
