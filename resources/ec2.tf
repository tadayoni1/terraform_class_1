# TODO: Complete following data module to find an ami. Filter somehow to find an Ubuntu ami
data "aws_ami" "my_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = [""]
  }


  owners = [""] 
}

data "template_file" "user_data" {
  template = "${file("${path.module}/user-data.sh.tpl")}"
}

# TODO: Complete following EC2 resource to create an EC2 instance with the selected ami and user-data
resource "aws_instance" "my_ec2" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = ""
  user_data              = ""
  vpc_security_group_ids = ""

  tags = {
    Name = "${var.EnvironmentName}"
  }
}