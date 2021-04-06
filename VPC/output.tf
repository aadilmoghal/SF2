output "public_subnetA_id" {
    value = aws_subnet.my_subnet.id
}
output "public_subnetB_id" {
  value = aws_subnet.my_subnet_2.id
}
output "vpc_id" {
    value = aws_vpc.vpc.id
}
