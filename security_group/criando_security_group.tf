provider "aws" {
	region = "us-east-2"
	shared_credentials_file = "/home/ubuntu/.aws/credentials"
	profile = "awsterraform"
}

resource "aws_security_group" "teste_terraform-sg" {
	name = "terraform-teste"
	vpc_id = "vpc-5fe0a34"
	
	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_block = ["0.0.0.0/0"]
	}
	tags = {
		Name = "sg-teste_terraform"
	}
}

