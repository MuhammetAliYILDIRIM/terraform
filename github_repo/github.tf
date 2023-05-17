provider "github" {
  token = "github_token"
}

resource "github_repository" "example" {
  name        = "terraform"
  description = "This repo contains terraform examples"

  lifecycle {
    ignore_changes = [topics]
  }

  topics = ["terraform"]
}
