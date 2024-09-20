variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
  
}


variable "common_tags" {
    type = map 
    default = {
        project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
  
}

variable "zone_id" {
    default = "Z01044063630C825L5H0L"
  
}

variable "domain_name" {
    default = "awsd81s.online"
}