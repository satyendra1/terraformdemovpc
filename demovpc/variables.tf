variable "vpc_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
  default     = "192.168.0.0/16"
}

variable "public_subnet" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["192.168.0.0/27", "192.168.32.0/27"]
}

variable "private_subnet" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["192.168.64.0/27", "192.168.96.0/27"]
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "sshkey" {
  type        = string
  description = "aws ssh key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0East6xEhMVlz3g5LFbdLPGLZSdOBT6yGsRVA4ArK5aU/hNteVsTqp7lDsiyg3RtBrBOciGUJVwmAu4Sn/IXN9874Dpp6rdXILD8WsiBtBX111gsozhayVgG7wVTdOkIVlZh2ClDWJ6CiDx9PeccclMf2bTg0mww73Kh62EXlihx47iiYNuUGncGHnUNFD7S+ggMhzM8lnUm/VUdQlwuVF2zh/Jq7hqOdXBocffX3/P43AVEsd0Yn1D4laQ2jaWvkNgn3eb+R6/9yNixd/jVLyYRGa2SjhiQP+vJ9znGeHDgSMk334pdhiQ3E8qUIAQY5VssnxoJqpcGTbKOHFtzPT66S7Uc/pfXo712vzbK0w1v/S6P0LQrQL3tc+j8Hd2NdrSdxYij4+z3e88IIKz+Eol/paalFvs6uWqR7UQXv1/0AxPzSdOCiDZh2vLLdDWwd9p+4VOd0238wSIIEwcUZA89NbhQMXzYxUEzHWAW0EZM84Li0uTcIEG2Tkt75Ff8= root@controller.example.com"
}
