resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.vpc_v3.id
   route {
    cidr_block = 0.0.0.0/0
    gateway_id = 

    }
}