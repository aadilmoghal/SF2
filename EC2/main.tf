resource "aws_instance" "My_VM" {
 ami                    = var.ubuntu_ami
 instance_type          = var.instance_type    
 key_name               = "aws-key"
 subnet_id              = var.subnet_id
 vpc_security_group_ids = var.security_group_ids

 lifecycle {
     create_before_destroy = true
 }

 tags = {
      project = "terraform"
 }
}