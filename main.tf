module "vpc" {
  source = "git::https://github.com/manoj531222/tf-module-vpc.git"

  for_each   = var.vpc
  cidr_block = each.value["cidr_block"]
  subnets    = each.value["subnets"]
  tags       = local.tags
  env        = var.env
}

module "web" {
  source = "git::https://github.com/manoj531222/tf-module-app.git"

  for_each = var.app
  instace_type = each.value["instace_type"]
  subnet_id = element(lookup(lookup(lookup(lookup(module.vpc, "main", null), "subnets", null), each.value["subnet_name"], null), "subnet_ids", null), 0)

}