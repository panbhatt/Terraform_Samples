/*
https://registry.terraform.io/providers/integrations/github/latest/docs
    What we are learning in this chapter. 
    1. terraform providers -> print the list of providers we are using in this file. 
    2. terraform init -> it will install the plugins. it will create .teeraform folder and lock file. The folder will contain
     all the plugin details.
    3. terraform plan -> will tell all the resources that needs to be created. 
    4. terraform apply -> it would apply the plan in the provider. 


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

}

resource "github_repository" "terrform_created_first_Repo_GSBM" {
  name = "TERRAFORM_GSBM_REPO"
  description = "My First Github Repo from the terraform"
  visibility = "public"
  auto_init = true
}

 