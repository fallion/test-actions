workflow "Test" {
  on = "pull_request"
  resolves = ["Create an issue"]
}

action "Create an issue" {
  uses = "JasonEtco/create-an-issue@632164ff2adbe4ba6e07956e576fdda052fe0bc5"
  secrets = ["GITHUB_TOKEN"]
}
