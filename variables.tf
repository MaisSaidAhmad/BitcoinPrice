variable "image_id" {
  type        = string
  description = "iimage id of ubuntu"
  default = "ami-0885b1f6bd170450c"
}

variable "KeyName" {
  type    = string
  default = "MaisA"
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-east-1c", "us-east-1b", "us-east-1"]
}

variable "access_key_var" {
  type        = string
  default = "AKIAVI7ZKT6NGOXZZE7V"
}

variable "secret_key_var" {
  type        = string
  default = "0ezZ8xyISVeIGk332g9foAetb9JwGVT3ThmnJVAL"
}

variable "vpc_ip" {
  type        = string
  default = "10.10.0.0/16" 
}

variable "subnets_names" {
  type    = list(string)
  default = ["10.10.1.0/24", "10.10.2.0/24"]
}