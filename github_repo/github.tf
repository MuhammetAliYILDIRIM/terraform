provider "github" {
  token = "${file("../github_token.txt")}"
}

resource "github_repository" "example" {
  name        = "terraform"
  description = "This repo contains terraform examples"

  lifecycle {
    ignore_changes = [topics]
  }

  topics = ["terraform"]
}
