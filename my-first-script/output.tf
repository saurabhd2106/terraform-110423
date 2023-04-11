output "ip_address" {

    sensitive = true
    value = aws_instance.myEc2Machine.public_ip
}