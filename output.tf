output "instance_ip" {
    value = aws_instance.cloud7-placesapp-dev-ec2.*.public_ip
}

output "s3_arn" {
    value = aws_s3_bucket.cloud7-placesapp-images-bucket.arn
}

output "vpc_id" {

    value = aws_vpc.cloud7-placesapp-dev-vpc.arn

}

output "db_endpoiint" {
    value = aws_db_instance.cloud7-placesapp-dev-flaskdb-rds.endpoint
}