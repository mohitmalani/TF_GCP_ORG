# tf-gcp-org
Repository for GCP Organization &amp; Projects
Note: Make sure to run `gcloud auth application-default login` to load the cred from json file before running 

# initialize the directory
`terraform init`. 
This step downloads the providers defined in the configuration.

# Validate your configuration
`terraform validate`
To make sure your configuration is syntactically valid and internally consistent

# preview the changes that Terraform plans to make to your infrastructure
`terraform plan`

# Apply the configuration
`terraform apply`

# Inspect the current state
`terraform show`
