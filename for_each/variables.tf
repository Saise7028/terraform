variable "instances" {
    type = map 
    default = {
        mysql    = "t3.small"
        backend  = "t3.micro"
        frontend = "t3.micro"  
    }
    
  
}


variable "domain_name" {
  default = "awsd81s.online"

}

variable "zone_id" {
  default = "Z01044063630C825L5H0L"

}