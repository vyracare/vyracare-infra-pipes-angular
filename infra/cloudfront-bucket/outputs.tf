output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.app_distribution.domain_name
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.app_distribution.id
}
