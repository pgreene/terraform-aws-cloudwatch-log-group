variable "name" {
  description = ""
  default = ""
}

variable "tags" {
  description = ""
  default = {}
}

variable "retention_in_days" {
  default = 3
}

variable "path" {
  default = "/aws/lambda/"
}