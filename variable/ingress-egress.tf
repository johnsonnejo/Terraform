variable "ingressrules" {
 description = "ingress rule"
 type = list(number) 
 default = [80, 443, 8080]
}

variable "egressrules" {
  description = "egress rule"
  type = list(number)
  default = [80, 443, 25, 3306, 53, 8080]
}