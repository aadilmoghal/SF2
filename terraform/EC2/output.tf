output "Jenkins_IP" {
    value = aws_instance.Jenkins_Build_VM.public_ip
}

output "Test_IP" {
    value = aws_instance.Test_VM.public_ip
}