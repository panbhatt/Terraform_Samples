/*
https://registry.terraform.io/providers/integrations/github/latest/docs
    What we are learning in this chapter. 
    1. terraform providers -> print the list of providers we are using in this file. 
    2. terraform init -> it will install the plugins. it will create .teeraform folder and lock file. The folder will contain
     all the plugin details.
    3. terraform plan -> will tell all the resources that needs to be created. 
    4. terraform apply -auto-approve -> it would apply the plan in the provider. 
    5. terraform destroy -> it will delete all the resourcesas present in the .tfstate file.
    6. terraform destroy --target github_repository <NAME_OF_RESOURCE>
    7. terraform validate -> if your conifguration is valid will give success message
    8. terraform refresh -> Change the tfstate from the resource . E.g. if the desc change sthere, it will chang eit here. 
    9. terraform show -> show the TFState on console.
    10. terraform output -> Print all the output names that are being generated once the resource is being created. 
    11. terraform console -> used for debugging. read all the variables of Github Resources & your variables like var.username. Exit
    12. terraform fmt -> Format the indentation

*/

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}



provider "github" {
  token = "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"
}

resource "github_repository" "terrform_created_first_Repo_GSBM" {
  name        = "TERRAFORM_GSBM_REPO"
  description = "My First Github Repo from the terraform Code .."
  visibility  = "public"
  auto_init   = true
}

/*
 This out the reorganization of the source code in files.

 */

output "terraform-first-repo-url" {
  value = github_repository.terrform_created_first_Repo_GSBM.html_url
}