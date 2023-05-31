variable "region" {
  type        = string
  description = "AWS 리전"
}

variable "azs" {
  type        = list(string)
  description = "AWS 리전내 가용영역 목록"
}