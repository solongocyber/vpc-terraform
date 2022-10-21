resource "aws_route_table" "pub_route_table" {
    vpc_id = aws_vpc.vpc_v2.id
    tags = {
        Name = "${var.env}-public_rt"
    } 
}

resource "aws_route_table_association" "pub_route_table" {
    count = length(var.public_subnet_cidr)
    subnet_id = element(aws_subnet.public_subnet.*.id, count.index)
    route_table_id = aws_route_table.pub_route_table.id
}

resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.vpc_v2.id
    tags = {
        Name = "${var.env}-private_rt"
    }
}

resource "aws_route_table_association" "private_route_table" {
    count = length(var.private_subnet_cidr)
    subnet_id = element(aws_subnet.private_subnet.*.id, count.index)
    route_table_id  = aws_route_table.private_route_table.id
}