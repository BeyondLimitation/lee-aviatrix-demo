module "aviatrix-demo" {
  source = "terraform-aws-modules/vpc/aws"

  name = "aviatrix-demo"
  cidr = "192.168.0.0/16"

  azs = var.azs
  private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
  public_subnets = ["192.168.3.0/24", "192.168.4.0/24"]

  tags = {
    "IaCTool" = "Terraform"
    "Environment" = "Aviatrix-demo"
  }
}