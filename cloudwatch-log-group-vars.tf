variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "tags" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = {}
}

variable "retention_in_days" {
  default = 3
}

variable "path" {
  default = "/aws/lambda/"
}