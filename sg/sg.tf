resource "aws_security_group" "allow_traffic" {
  name        = "allow web traffic"
  description = "Allow TLS inbound traffic"
  
//dynamic block for security group ingress and egress rules
  dynamic "ingress" {
    iterator         = port
    for_each         = var.ingressrules
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

    dynamic "egress" {
    iterator         = port
    for_each         = var.egressrules
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }


  tags = {
    "Name" = "allow_traffic"
  }
}