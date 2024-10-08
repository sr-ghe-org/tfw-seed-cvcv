module "vcsworkflowtest" {
  source          = "app.terraform.io/tfc-test-pool/wrkflw/vcs"
  version         = "1.0.2"
  repository_name = "cvcv-repo"
  roles = {
    repository = ["roles/artifactregistry.writer"]
    workspace  = ["roles/iam.workloadIdentityPoolAdmin", "roles/compute.admin"]
  }
  gcp_projects = {
    pr = "prcvcv",
    np = "npcvcv"
  }
  repository_template = "tf-appcode-template"
  vcs_ghain           = "ghain-9NW7c1EhRWxYsYs5"
  tfe_project_id      = "prj-y7HjHxwqtsZe1cza"
  wif = {
    repository = {
      gcp = {
        pr = {
          service_account = "sarepoprcvcl@prcvcv.iam.gserviceaccount.com"
          sa_project_id   = "prcvcv"
          project_number  = "593664895684"
          pool_id         = "ghecvcvprcvcv"
          provider_id     = "gh-provider"
        },
        np = {
          service_account = "sareponpcvcl@npcvcv.iam.gserviceaccount.com"
          sa_project_id   = "npcvcv"
          project_number  = "535584060380"
          pool_id         = "ghecvcvnpcvcv"
          provider_id     = "gh-provider"
        }
      }
    },
    workspace = {
      gcp = {
        pr = {
          project_number = "593664895684"
          pool_id        = "tfecvcvprcvcv"
          provider_id    = "tf-provider"
        },
        np = {
          project_number = "535584060380"
          pool_id        = "tfecvcvnpcvcv"
          provider_id    = "tf-provider"
        }
      }
    }
  }
  workload_context = {
    pr = {
      pr = {
        gcp = ["northamerica-northeast2", "northamerica-northeast1", "us-central4"]
      }
    },
    np = {
      stg = {
        gcp = ["northamerica-northeast2"]
      }
    }
  }
  workload_id = "cvcl"
  workflow_id = "tf"
  # ghe_team_id = "operator-bqqq"
  # tfe_team_id = ""
}