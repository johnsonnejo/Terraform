resource "aws_instance" "web" {
    ami = data.aws_ami.amzlinux2.id
    security_groups = [module.sg.sg_name]
    user_data = file("./web/server-userData.sh")
}
tags = {
    "Name" = "web-server"
}

