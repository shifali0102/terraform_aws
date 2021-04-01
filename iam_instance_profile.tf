resource "aws_iam_instance_profile" "s3_access_role" {
  name = "s3_access_role"
  role = aws_iam_role.s3_access_role.name
}

