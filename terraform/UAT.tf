module "uat" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws_uatlz_acc@kainos.com"
    AccountName               = "uat"
    ManagedOrganizationalUnit = "Dev""
    SSOUserEmail              = "aws_uatlz_acc@kainos.com"
    SSOUserFirstName          = "uat"
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
    group = "uat"
  }

  account_customizations_name = "uat"
}