# Terraform AWS VPC

This module creates the following resources.
* VPC
* IGW
* 2 public subnets in us-east-1a and us-east-1b AZ
* 2 private subnets in us-east-1a and us-east-1b AZ
* 2 Database subnets in us-east-1a and us-east-1b AZ
* 1 public Route table
* 1 private Route table
* 1 Database Route table
* EIP for NAT
* NAT Gateway in public subnet 1a az
* IGW route is added to public route table
* NAT gateway route to private and database route tables
* Routet table association with subnets
* VPC to default VPC peering
* public route table to default VPC route
* Default VPC mainroute table to created VPC route


### Inputs

* vpc_cidr - (Required). Uer mut supply the CIDR for VPC.
* project_name -(Required). User must upply the project name.