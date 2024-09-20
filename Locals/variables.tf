variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"

}

# variable "domain_name" {
#   default = "awsd81s.online"

# }

# variable "zone_id" {
#   default = "Z01044063630C825L5H0L"

# }

variable "environment" {
  default = "prod"

}