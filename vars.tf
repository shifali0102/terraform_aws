variable "region" {
    default = "us-east-1"
}

variable "vpc_cidr"{
  default = "10.0.0.0/16"
}

variable "subnet_public_cidr1"{
  default = "10.0.1.0/24"
}

variable "subnet_public_cidr2"{
  default = "10.0.2.0/24"
}

variable "subnet_private_cidr1"{
  default = "10.0.3.0/24"
}

variable "subnet_private_cidr2"{
  default = "10.0.4.0/24"
}


variable "environment"{
  default = "dev"
}


variable ec2_type {
    type = string
    default = "t2.micro"
}

variable tagname {
    type = string
    default = "cloud7-placesapp-dev-ec2"

}


variable instance_count{
    type = number
    default = 2
}

variable rds{
    type = map
    default = {
        "engine" = "mysql"
        "allocated_storage" = "10"
        "engine_version"    = "5.7"
        "instance_class"    = "db.t3.micro"
        "name"              = "mydb"
        "username"          = "admin"
        "password"           = "password"
   "parameter_group_name" = "default.mysql5.7"
  "skip_final_snapshot"  = true
    }
}