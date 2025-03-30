variable "environment" {
  type    = string
  default = "stag"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0cdb8b4c91d5555a8"
}

variable "private_subnets" {
  type    = list(string)
  default = ["subnet-08683029d4d4baff8", "subnet-055b84f8316d842fc", "subnet-0caa673bca932d2aa"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["subnet-084de590f0af64ff1", "subnet-053772d0eca3b50ca", "subnet-0b855a7991e6d56e9"]
}