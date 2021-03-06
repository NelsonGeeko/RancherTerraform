variable "rancher_api_url" {
    description = "Target Rancher instance to deploy to"
    type = string
}

variable "rancher_access_key" { 
    description = "Rancher API Access key"
    type = string
    sensitive = true
}

variable "rancher_secret_key" {
    description = "Rancher API Secret key"
    type = string
    sensitive = true
}

variable "rancherSecurity" {
    description = "Rancher TLS Verification (Is the Rancher instance Insecure?)"
    type = bool
    default = true
}

variable "rancherClusterName" {
    description = "Cluster Name"
    type = string
}
variable "kubeVersion" {
    description = "Kubernetes version, Currently supports RKE2 and K3s (Default K3s for speed)"
    type = string
    default = "v1.21.4+k3s1"
}
variable "nodeQTY" {
    description = "Number of Nodes wanted in the cluster"
    type = number
    default = 1
  
}
variable "aws_secret_key" {
    description = "AWS Secret Key"
    type = string
    sensitive = true
}

variable "aws_access_key" {
    description = "AWS Access Key"
    type = string
    sensitive = true
}

variable "awsRegion" {
    description = "AWS Deployment region"
    type = string
    default = "eu-west-1"
}

variable "awsAMI" {
    description = "AWS ec2 AMI (Defualt is Ubuntu)"
    type = string
    default = "ami-00c90dbdc12232b58"
}

variable "awsAvailibilityZone" {
    description = "AWS Availibility zone"
    type = string
    default = "c"
}

variable "awsVPC" {
    description = "AWS VPC"
    type = string
}

variable "awsSubnet" {
    description = "AWS VPC Subnet"
    type = string
}

variable "awsInstanceType" {
    description = "Instance type on AWS"
    type = string
    default = "t2.large"
}

# Optional Configuration
variable "monitoring" {
    description = "Do you want to deploy monitoring?"
    type = bool
    default = false
}