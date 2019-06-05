# usmakestwo

[![Netlify Status](https://api.netlify.com/api/v1/badges/7f3263ed-5b1c-4751-92c5-2fbeb5804ef6/deploy-status)](https://app.netlify.com/sites/zealous-fermi-55ce0b/deploys)

Landing page for Us Makes Two

### Requirements

1. Domain is verified with TXT records via [Google Webmaster Central](https://www.google.com/webmasters/verification/home?hl=en&authuser=1).

<img width="1394" alt="image" src="https://user-images.githubusercontent.com/1566236/58974524-98328980-8790-11e9-9993-c08679d50223.png">

2. Use A record instead of CNAME records for Apex domain.

  a. Since we are hosting with Netlify and using Google for email records, we cannot have a CNAME apex domain because it interfers with MX records(email)

<img width="1120" alt="Screen Shot 2019-06-05 at 12 46 34 PM" src="https://user-images.githubusercontent.com/1566236/58974304-1b071480-8790-11e9-845d-f89d34180e70.png">

3. Check to see if records are updated:
  - https://toolbox.googleapps.com/apps/dig/#TXT/
  - https://toolbox.googleapps.com/apps/checkmx/


### Requirements for using GCP with Terraform

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

#### Resources:

- https://www.whatsmydns.net/
- https://www.netlify.com/docs/custom-domains/
- https://www.netlify.com/blog/2017/02/28/to-www-or-not-www/
- https://cloud.google.com/storage/docs/hosting-static-website
- https://www.terraform.io/docs/providers/google/getting_started.html
- https://circleci.com/blog/deploying-using-terraform-gcp/
- https://github.com/usmakestwo/terraform-with-circleci-example
