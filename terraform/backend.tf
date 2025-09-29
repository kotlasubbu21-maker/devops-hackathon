terraform {
  backend "gcs" {
    bucket  = "devops-hackathon-473519-terraform-bucket" # create this bucket manually once
    prefix  = "devops-hackathon/state"
  }
}