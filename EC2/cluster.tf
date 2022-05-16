# Create amazonec2 cloud credential
resource "rancher2_cloud_credential" "ec2login" {
  name = "ec2login"
  amazonec2_credential_config {
    access_key = var.awsAccess
    secret_key = var.awsSecret
  }
}


resource "aws_security_group" "rancher_sg_allowall" {
  name        = "ec2-k3s-allowall"
  description = "Rancher quickstart - allow all traffic"

  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "rancher2_machine_config_v2" "ec2instance" {
  generate_name = "ec2instance"
  amazonec2_config {
    ami =  var.awsAMI
    region = var.awsRegion
    security_group = [aws_security_group.rancher_sg_allowall.name]
    vpc_id = var.awsVPC
    subnet_id = var.awsSubnet
    zone = var.awsAvailibilityZone
  }
}

resource "rancher2_cluster_v2" "clusterconfig" {
  name = var.rancherClusterName
  kubernetes_version = var.kubeVersion
  enable_network_policy = false
  default_cluster_role_for_project_members = "user"
  rke_config {
    machine_pools {
      name = "pool1"
      cloud_credential_secret_name = rancher2_cloud_credential.ec2login.id
      control_plane_role = true
      etcd_role = true
      worker_role = true
      quantity = var.nodeQTY
      machine_config {
        kind = rancher2_machine_config_v2.ec2instance.kind
        name = rancher2_machine_config_v2.ec2instance.name
      }
    }
  }
}