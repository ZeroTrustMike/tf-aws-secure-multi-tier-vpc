region = "us-east-1"

vpc_cidr_block = "170.0.0.0/16"

public_subnet_cidrs = [ "170.0.0.0/24", "170.0.1.0/24" ]
private_subnet_cidrs = [ "170.0.2.0/24", "170.0.3.0/24" ]
azs = [ "us-east-1a", "us-east-1b" ]

vpc_ingress = [ {
  from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_block = [ "0.0.0.0/0" ]
},
{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_block = [ "0.0.0.0/0" ]
},
{
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_block = [ "0.0.0.0/0" ]
}]

vpc_egress = [ {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_block = [ "0.0.0.0/0" ]
} ]