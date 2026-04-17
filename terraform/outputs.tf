output "repository_url" {
  description = "HTTPS URL of the repository"
  value       = github_repository.paperize.html_url
}

output "clone_url" {
  description = "URL to use for git clone"
  value       = github_repository.paperize.ssh_clone_url
}
