resource "aws_instance" "webinstance" {
   ami           = "ami-03d64741867e7bb94"
   instance_type = "t2.micro"
   security_groups = ["${aws_security_group.mysg.name}"]
   tags = {
   Name = "webserver"
   }
   }
resource "aws_security_group" "mysg" {
  vpc_id       = "vpc-a66edccd"
  name         = "websg"
  description  = "My VPC Security Group"
  
  # allow ingress of port 22
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  
} 
  
  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
