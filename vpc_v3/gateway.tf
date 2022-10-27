resource "aws_internet_gateway" "ingw" {
 vpc_id = aws_vpc.vpc_v3.id
 tags = merge(local.comman_tags, {Name = replace(local.name, "rtype" , "ingw")})   
}