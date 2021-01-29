

resource "aws_instance" "webinstance" {
   ami           = "ami-03d64741867e7bb94"
   instance_type = "t2.micro"
   tags = {
   Name = "webserver"
   }
   }
