/* this is our first file
created using terraform and
god bless you */

provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "ourfirst" {
  ami           = "ami-0861f4e788f5069dd"
  instance_type = "t2.micro"
lifecycle {
  prevent_destroy = false
  }

}
/*
run
terraform validate
terraform plan
terraform apply
and after checking the instance on aws dashboard
terraform destroy
*/