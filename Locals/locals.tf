locals {
  domain_name   = "awsd81s.online"
  zone_id       = "Z01044063630C825L5H0L"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  #count.index will not work in locals
}