
resource "aws_subnet" "public_subnet" {
    # count = length(var.vpc_subnets)
    vpc_id = "${aws_vpc.my_vpc.id}"
    map_public_ip_on_launch = true
    cidr_block = "${var.vpc_subnets}"
    
    tags = {
        Name = "VPC-Subnets"
    }
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.my_vpc.id}"

  tags = {
    Name = "VPC_Internet_Gateway"
  }
}

resource "aws_route_table" "public-route-table" {
    vpc_id = "${aws_vpc.my_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }
    
    tags = {
        Name = "Public Route Table"
    }
}

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
    subnet_id = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public-route-table.id}"
}


