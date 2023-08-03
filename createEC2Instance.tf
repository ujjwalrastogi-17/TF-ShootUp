resource "aws_instance" "webservers" {
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    key_name = "TF_KEY"
    subnet_id = "${aws_subnet.dev-public-1.id}"
    tags = {
      Name = "Linux"
      Env = "Dev"
    }
}


