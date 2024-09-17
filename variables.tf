variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is the AMI ID instance of RHEL-9 server"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "tags" {
    type = map # optional
    default = {
        Name = "backend"
        project = "expense"
        component = "backend"
        Envinornment = "DEV"
        Terraform = "true"
    }  
}

variable "sg_name" {
    default = "allow_ssh"

}

variable "sg_description" {
    default = "Allow port number 22 shh Access"

}

variable "from_port" {
    default = 22
    type = number
  
}

variable "to_port" {
    default = 22
    type = number
  
}

variable "protocol" {
    default = "tcp" 
}

variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]

}

