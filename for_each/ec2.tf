resource "aws_instance" "expense" {
    for_each = var.instances # this vaiable is a map
    # for_each will give us special vaiable with each name
    ami = "ami-09c813fb71547fc4f" # ami id will be over ride
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = each.key
    }
}


resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow port number 22 for ssh Access"

  #usuallly we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allow everyone
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_ssh"
  }

}
