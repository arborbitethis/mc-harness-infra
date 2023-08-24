
resource "harness_platform_connector_github" "arbor_git" {
  identifier  = "arbor_git_connector"
  name        = "Arbor Git Connector"
  description = "connector for github account arborbitethis"

  url                = "https://github.com/arborbitethis"
  connection_type    = "Account"
  validation_repo    = "mc-harness-infra"
  delegate_selectors = ["helm-delegate"]
  credentials {
    http {
      username  = "arborbitethis"
      token_ref = "account.github_token_secret"
    }
  }
  api_authentication {
    token_ref = "account.github_token_secret"
  }
}
