#this is practicle mode

provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0a5ac53f63249fba0"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }


  lifecycle {
   ignore_changes = all
  }


}






