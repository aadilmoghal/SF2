resource "aws_instance" "Jenkins_Build_VM" {
 ami                    = var.ubuntu_ami
 instance_type          = var.instance_type    
 key_name               = "aws-key"
 subnet_id              = var.subnet_id
 vpc_security_group_ids = var.security_group_ids

 lifecycle {
     create_before_destroy = true
 }

 tags = {
      Name    = "Jenkins_Build_VM"
      project = "SFIA2"
 }
}

resource "aws_instance" "Test_VM" {
  ami                    = var.ubuntu_ami
  instance_type          = var.instance_type
  key_name               = "aws-key"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

    tags = {
    Name = "Test_VM"
    project = "SFIA2"
  }

}