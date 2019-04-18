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

<img width="1126" alt="Screen Shot 2019-04-18 at 5 00 34 PM" src="https://user-images.githubusercontent.com/1566236/56391180-e6e58d80-61fb-11e9-82b5-57f4891437f9.png">

- https://domains.google
- https://www.google.com/webmasters/verification/home?pli=1&authuser=1

#### Reference:

- https://cloud.google.com/storage/docs/hosting-static-website
- https://www.terraform.io/docs/providers/google/getting_started.html
- https://circleci.com/blog/deploying-using-terraform-gcp/
- https://github.com/usmakestwo/terraform-with-circleci-example
