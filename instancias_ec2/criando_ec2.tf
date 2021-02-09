provider "aws" {
	region = "us-east-2"
	shared_credentials_file = "/home/ubuntu/.aws/credentials"
	profile = "awsterraform"
}

resource "aws_instance" "teste_homologacao" {
	ami = "ami-01aab85a5e4a5a0fe"
	instance_type = "t2.micro"
	key_name = "chave"
	tags = { 
		Name = "teste_homologacao"
	}
	security_group = ["testeterraform"
}

