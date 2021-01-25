# GCP Gitlab Runner 
A Very Simple Gitlab Runner for GCP

### Where to start ?
- Create your GCP project: [Google Cloud Console](https://console.cloud.google.com/home/dashboard)
- Create a new service account name `terraform` and generate a new key `terraform-key.json`, that you will put at the root of your project.  
  Use the [project editor role](https://cloud.google.com/iam/docs/understanding-roles?hl=en) for this service account.
- [Install terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Run those following commands:

```bash
terraform init
terraform apply -var-file="custom.tfvars"
```

It will create 1 runner in the GCP project specified in your `custom.tfvars` file.   
```
project = "your-project-id"
nb_of_runners = 1
network = "gitlab-runner"
```

After you will need to [register the runner](https://docs.gitlab.com/runner/register/index.html#linux)

### Links
[Install GitLab Runner manually on GNU/Linux](https://docs.gitlab.com/runner/install/linux-manually.html)
[Register the Runner](https://docs.gitlab.com/runner/register/index.html#linux)
