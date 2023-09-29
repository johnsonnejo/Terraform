resource  "aws_instance" "db" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.my_instance_type

tags  = {
    "Name" = "db-server"
}
}
