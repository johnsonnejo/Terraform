#create elastic ip resource called instance eip
resource "aws_eip" "eip" {
    instance = var.instance_eid
}