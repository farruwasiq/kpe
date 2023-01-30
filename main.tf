provider "aws"{
}
resource "aws_instance" "name" {
    ami="ami-08c40ec9ead489470"
    instance_type="t2.micro"
    tags={
        "Name"="App-(var.env)"
    }
  
}
resource "aws_instance" "name" {
    ami="ami-08c40ec9ead489470"
    instance_type="t2.micro"
    tags={
        "Name"="App-(var.env)"
    }
  
}