variable "region" {
  default = "us-central1-a"
}

variable "project-name" {
  default = "unique-bonbon-207519"
}

variable "subnetwork-region" {
  default = "us-central1"
}

variable "network" {
  default = "test-network"
}

variable "vm_type" {
  default = "n1-standard-1"
}

variable "os" {
  default {
    "centos7"  = "centos-7-v20180611"
    "centos6"  = "centos-6-v20180611"
    "ubuntu"   = "ubuntu-1404-trusty-v20180614"
  }
}

variable "count" {
  default = "1"
}