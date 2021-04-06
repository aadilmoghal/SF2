variable "vpc-cidr-block" {
    description = "CIDR block for VPC"
    default      = "10.0.0.0/16"
}

variable "pub-snA-cidr-block" {
    description = "CIDR block for public subnet A"
    default      = "10.0.1.0/24"
}

variable "pub-snB-cidr-block" {
    description = "CIDR block for public subnet B"
    default      = "10.0.2.0/24"
}