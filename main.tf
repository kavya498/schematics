variable "ibmcloud_api_key"{}

provider "ibm" {
ibmcloud_api_key=var.ibmcloud_api_key
}


resource "ibm_cr_namespace" "test" {
  name = "test-12312"
  }

output "apikey"{
  value = var.ibmcloud_api_key
}
