provider "aws" {
	region = "us-east-2"
	shared_credentials_file = "/home/ubuntu/.aws/credentials"
	profile = "awsterraform"
}

resource "aws_ebs_volume" "ebs_teste" {
	availability_zone = "us-east-2c"
	size = 8
	type = "gp2"
	tags = {
		Name = "teste-terraform"
}
}
