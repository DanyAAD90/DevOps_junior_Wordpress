# HCL (HashiCorp Configuration Language) format

# Definiowanie providerów
provider "aws" {
  region = "us-west-2"
}

# Definiowanie zasobów
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "example-instance"
  }
}

# Definiowanie kluczy SSH
resource "aws_key_pair" "example_key_pair" {
  key_name   = "example_key_pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

# Wykorzystanie klucza SSH do połączenia z instancją
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.example_key_pair.key_name}"
  tags = {
    Name = "example-instance"
  }
}

#W powyższym kodzie najpierw definiujemy dostawcę, 
#w tym przypadku AWS, wraz z regionem, 
#który chcemy wykorzystać. Następnie definiujemy zasoby, 
#w tym przypadku instancję EC2, z określonym AMI i typem instancji, 
#a także kluczami SSH, które umożliwią nam połączenie z instancją. 
#W końcu wykorzystujemy klucz SSH do połączenia z instancją.
#Po napisaniu kodu, projekt można skompilować za pomocą komendy terraform init, 
#która pobierze wymagane pluginy, a następnie za pomocą komendy terraform apply, 
#która zastosuje kod do wdrożenia infrastruktury w chmurze.
