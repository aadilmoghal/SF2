variable "ubuntu_ami" {
    default = "ami-0244a5621d426859b"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "subnet_id" {
    default = "null"
}

variable "security_group_ids" {
    default = "null"
}