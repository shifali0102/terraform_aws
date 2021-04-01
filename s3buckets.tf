
resource "aws_s3_bucket" "cloud7-placesapp-webpages-bucket-cloud7" {
bucket = "cloud7-placesapp-webpages-bucket-cloud7"
acl = "public-read"

tags = {
Name = "cloud7-placesapp-webpages-bucket-cloud7"
env = var.environment
}
policy = jsonencode({
Version = "2012-10-17"
Id = "MYBUCKETPOLICY"
Statement = [
{
Sid = "IPAllow"
Effect = "Allow"
Principal = "*"
Action = "s3:GetObject"
"Resource": "arn:aws:s3:::cloud7-placesapp-webpages-bucket-cloud7/*"
Condition = {
IpAddress = {
"aws:SourceIp" = "0.0.0.0/0"
}
}

},
]
})
# Versioning enable
versioning {
enabled = true
}
}

# resource "aws_s3_bucket_object" "object" {
# bucket = "cloud7-placesapp-webpages-bucket"
# key = "1.html"
# source = "./myfile/1.html"
# }

resource "aws_s3_bucket" "cloud7-placesapp-images-bucket" {
bucket = "cloud7-placesapp-images-bucket"
acl = "private"

tags = {
Name = "cloud7-placesapp-images-bucket"
env = var.environment
}
}

resource "aws_s3_bucket" "cloud7-placesapp-user-bucket" {
bucket = "cloud7-placesapp-user-bucket"
acl = "private"

tags = {
Name = "cloud7-placesapp-user-bucket"
env = var.environment
}
}