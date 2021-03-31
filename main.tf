terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.21.1"
    }
  }
}

resource "ibm_cr_namespace" "test" {
  name = "test-12312"
  }
