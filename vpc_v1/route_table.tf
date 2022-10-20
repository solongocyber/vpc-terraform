resource "aws_route_table" "public_rt"{
    vpc_id = aws_vpc.first_vpc.id
    tags = {
        Name = "${var.env}- public_route_table"
    }
}

resource "aws_route" "route-internet_gw"{
    route_table_id = aws_route_table.public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
}

resource "aws_route_table_association" "public_subnet_1"{
    subnet_id = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id

}

resource "aws_route_table_association" "public_subnet_2"{
    subnet_id = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_rt.id

}

resource "aws_route_table" "private_rt"{
    vpc_id = aws_vpc.first_vpc.id
    tags = {
        Name = "${var.env}-private_route_table"
    }
}

resource "aws_route" "aws_nat_gateway"{
    route_table_id = aws_route_table.private_rt.id
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.homework.id

}

resource "aws_route_table_association" "private_subnet_1"{
    subnet_id = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.private_rt.id

}

resource "aws_route_table_association" "private_subnet_2"{
    subnet_id = aws_subnet.private_subnet_2.id
    route_table_id = aws_route_table.private_rt.id

}