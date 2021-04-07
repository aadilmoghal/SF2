output "Jenkins_IP" {
    value = module.ec2_instances.Jenkins_IP
}

output "Test_IP" {
  value = module.ec2_instances.Test_IP
}

output "test_endpoint" {
  value = module.RDS_instances.test_RDS_Endpoint
}

output "prod_endpoint" {
  value = module.RDS_instances.prod_RDS_Endpoint
}