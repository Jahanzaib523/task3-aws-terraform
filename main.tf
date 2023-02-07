provider "aws"  {
    region = var.region_type
}

resource "aws_instance" "ec2_instance" {
    ami = var.ami_number
    instance_type = var.ins_type
    subnet_id = "${aws_subnet.public_subnet.id}"
    vpc_security_group_ids = [aws_security_group.custom_sg.id]
    associate_public_ip_address = true
    key_name = "abc_keypair"

    user_data = file("${path.module}/install_nginx.sh")

    tags = {
        Name = "Ec2-Instance-Task3"
    }
}

