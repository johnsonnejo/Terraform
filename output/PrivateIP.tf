output "PrivateIP" {
    description = "This is to output instance private ip"
    value = aws_instance.private_ip
}

output "PublicIP" {
    description = "This is to output instance public ip"
    value = aws_instance.public_ip
}
