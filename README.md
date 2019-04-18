# usmakestwo

[![CircleCI](https://circleci.com/gh/gonzalovazquez/usmakestwo.svg?style=svg)](https://circleci.com/gh/gonzalovazquez/usmakestwo)

Landing page for Us Makes Two

### Requirements

Following the [GCP tutorial](https://www.terraform.io/docs/providers/google/getting_started.html), the following steps are required to bootstrap the infrastructure.

**Prerequisites**:

1. Go to [GCP API Library](https://console.developers.google.com/apis/library) and enable the following services:

- Compute Engine API - https://console.developers.google.com/apis/api/compute.googleapis.com

2. GCP Service Account with the correct resource provisioning
![Permissions](https://github.com/telus/analytics-data-pipeline/blob/master/assets/service-account-permissions.png)

3. Terraform downloaded and available through the CLI

### Deploy

1. Run `source init.sh`

2. Inside terraform directory `terraform apply`

3. Site is published

## Add Domain to Bucket

- https://domains.google/#/

#### Reference:

- https://cloud.google.com/storage/docs/hosting-static-website
- https://www.terraform.io/docs/providers/google/getting_started.html
- https://circleci.com/blog/deploying-using-terraform-gcp/
- https://github.com/usmakestwo/terraform-with-circleci-example
