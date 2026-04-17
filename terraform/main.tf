resource "github_repository" "paperize" {
  name        = "paperize"
  description = "paperize"
  visibility  = "public"

  has_issues   = true
  has_projects = false
  has_wiki     = false

  auto_init              = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
}

resource "github_branch_default" "main" {
  repository = github_repository.paperize.name
  branch     = "main"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.paperize.node_id
  pattern       = "main"

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 0
  }

  enforce_admins = false
}
