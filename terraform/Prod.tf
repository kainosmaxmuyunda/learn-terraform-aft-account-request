module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws_prodlz_acc@kainos.com"
    AccountName               = "Prod"
    ManagedOrganizationalUnit = "Prod"
    SSOUserEmail              = "aws_prodlz_acc@kainos.com"
    SSOUserFirstName          = "Prod"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Prod"
}