# Terraform Module Name: terraform-module-aws-codebuild-source-credential


## General

This module may be used to create **_CodeBuild Source Credential_** resources in AWS cloud provider..

---


## Prerequisites

This module needs Terraform 0.12.16 or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.

---

## Features Branches

Below we are able to check the resources that are being created as part of this module call:


From branch : **_terraform-12/master_**

* **_CodeBuild Source Credential (Terraform 12 supported code)_**


---

## Below are the resources that are launched by this module

* **_CodeBuild Source Credential_**


---

## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "<layer>-codebuild-source-credential-<AccountID>" {
  source = "git::https://github.com/nitinda/terraform-module-aws-codebuild-source-credential.git?ref=terraform-12/master"


}
```
---

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


|         **_Variable_**          |        **_Description_**            |   **_Type_**   |
|---------------------------------|-------------------------------------|----------------|
| auth_type                       | The type of authentication used     | string         |
| server_type                     | The source provider used            | string         |
| token                           | The personal access token           | string         |
| user_name                       | The Bitbucket username (Optional)   | string         |



## Outputs

* **_id_**
* **_arn_**



### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "s3-webstack-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```

- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - **_Nitin Das_**