variable "env"{
    type = string
    default = "dev"
}

variable "cidr_block_vpc_v2" {
    type = string
    default = "10.0.0.0/16"
}


variable "public_subnet_cidr" {
    type = list(string)
    description = "This is public subnet CIDR"
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
}

variable "az" {
    type = list(string)
    description = "This is public subnet availability_zone"
    default = ["us-east-2a", "us-east-2b", "us-east-2b"]
}

variable "public_subnet" {
    type = list(string)
    default = ["pub_subnet_1", "pub_subnet_2", "pub_subnet_3"]
}

variable "private_subnet" {
    type = list(string)
    default = [ "private_subnet_1", "private_subnet_2", "private_subnet_3" ]
}

variable "pub_rt_cidr"{
    type = string
    default = "0.0.0.0/0"
}
variable "private_subnet_cidr" {
    type = list(string)
    default = [ "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ]
}

