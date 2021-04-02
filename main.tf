terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">=1.18.0"
    }
  }
}
provider "ibm"{
  region= "us-east"
}
resource "ibm_is_vpc" "testvpc" {
  name = "testvpc"
}
resource "ibm_is_subnet" "testacc_subnet" {
  name            = "testsubnet"
  zone            = "us-east-1"
  ipv4_cidr_block = "10.241.0.0/18"
  vpc             = ibm_is_vpc.testvpc.id
}
