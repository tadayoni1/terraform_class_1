resource "aws_security_group_rule" "ingress_instance_ssh" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  cidr_blocks              = ["0.0.0.0/0"]

  security_group_id        = "${aws_security_group.web_server.id}"
}

# TODO: Add two more rules to open 
# 1. Outgoing connection to internet
# 2. Incoming connection from port 80 


# TODO: Complete following security group module 
resource "aws_security_group" "web_server" {
  name        = ""
  description = ""
  vpc_id      = ""

  tags = {
    Name = ""
  }

}