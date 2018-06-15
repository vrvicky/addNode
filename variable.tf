variable "bootIP" {
  description = "IP of host to ssh, boot node or Master 1"
}

variable "nodeType" {
  description = "Node type - worker , master, proxy..."
}

variable "NewNodeIPs" {
  description = "IP of new node"
  #type = "list"
}

variable "root_password" {
  description = "ssh root password"
}

variable "dockerRegistry" {
 description = "Docker registry to pull the images"
 default = "registry.ng.bluemix.net"
}

variable "reg_token" {
 description = "Docker registry token for auth"
 default = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJmZTI1ZDQzZS1iNzBlLTU2NDctOGE5Yy0wNjFjZjUyZDI2ODYiLCJpc3MiOiJyZWdpc3RyeS5ibHVlbWl4Lm5ldCJ9.Pn9Vf7sNCQahDWfj2Xi9kGXzq-0hGFnAGhqqpUrWwt4"
}

variable "image_tag" {
  description = "GA version of CAM x86"
}

variable "clusterLocation" {
  description = "Location to CAM cluster folder"
}

variable "dependsOn" {}