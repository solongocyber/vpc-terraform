variable "vpc_cidr"{
    type = string
    default = "10.0.0.0/16"
}

variable "env" {
    type = string
    default = "dev"
}

variable "project" {
    type = string
    default = "project"
}

variable "team" {
    type = string
    default = "DevOps"
}

variable "owner" {
    type = string
    default = "Solongo"
}

variable "region" {
    type = string
    default = "us-east-2"
}

variable "stage" {
    type = string
    default = "nonprod"
}