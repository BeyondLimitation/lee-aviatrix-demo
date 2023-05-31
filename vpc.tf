module "aviatrix-demo" {
  source = "terraform-aws-modules/vpc/aws"

  name = "aviatrix-demo"
  cidr = "192.168.0.0/20"

  azs = var.azs
  private_subnets = ["192.168.10.0/24", "192.168.20.0/24"]
  public_subnets = ["192.168.30.0/24", "192.168.40.0/24"]

  tags = {
    "IaCTool" = "Terraform"
    "Environment" = "Aviatrix-demo"
  }
}