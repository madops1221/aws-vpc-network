variable "region_name" {
  description = "Provide the region name"
  type        = string
  default     = "us-east-1"
}
variable "vpc_cidr_block" {
  description = "Provide the cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}
variable "environment" {
  description = "Provide the environment name"
  type        = string
  default     = "Dev"
}
variable "public_subnets" {
  description = "Provide public subnets cidr values"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}
variable "private_subnets" {
  description = "Provide private subnets cidr blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "public_az" {
  description = "Public az info"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
variable "private_az" {
  description = "Private az info"
  type        = list(string)
  default     = ["us-east-1c", "us-east-1d"]
}
