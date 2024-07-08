variable "domain_names" {
  description = "Fully-qualified domain name to register. The domain names to use for API gateway it will use the index of stage_names to select the domain name."
  type        = list(string)
  default     = "api.buoy-secure-ngp.com"
}
