[![Slalom][logo]](https://slalom.com)

# terraform-aws-appsync

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-appsync/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-appsync)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-appsync.svg)](https://github.com/JamesWoolfenden/terraform-aws-appsync/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

![alt text](./diagram/api.png)

Include **module.appsync.tf** this repository as a module in your existing terraform code:

```terraform
module "appsync" {
  source      = "JamesWoolfenden/appsync/aws"
  version     = "0.0.4"
}
```

## IAM Permissions

```json
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "appsync:CreateApiKey",
          "appsync:CreateDataSource",
          "appsync:CreateFunction",
          "appsync:CreateGraphqlApi",
          "appsync:CreateResolver",
          "appsync:CreateType",
          "appsync:DeleteApiKey",
          "appsync:DeleteDataSource",
          "appsync:DeleteFunction",
          "appsync:DeleteGraphqlApi",
          "appsync:DeleteResolver",
          "appsync:DeleteType",
          "appsync:GetDataSource",
          "appsync:GetFunction",
          "appsync:GetGraphqlApi",
          "appsync:GetIntrospectionSchema",
          "appsync:GetResolver",
          "appsync:GetSchemaCreationStatus",
          "appsync:GetType",
          "appsync:GraphQL",
          "appsync:ListApiKeys",
          "appsync:ListDataSources",
          "appsync:ListFunctions",
          "appsync:ListGraphqlApis",
          "appsync:ListResolvers",
          "appsync:ListResolversByFunction",
          "appsync:ListTagsForResource",
          "appsync:ListTypes",
          "appsync:StartSchemaCreation",
          "appsync:TagResource",
          "appsync:UntagResource",
          "appsync:UpdateApiKey",
          "appsync:UpdateDataSource",
          "appsync:UpdateFunction",
          "appsync:UpdateGraphqlApi",
          "appsync:UpdateResolver",
          "appsync:UpdateType"
        ],
        "Effect": "Allow",
        "Resource": "*"
      },
      {
        "Action": [
          "iam:AttachRolePolicy",
          "iam:CreateRole",
          "iam:DeleteRole",
          "iam:DetachRolePolicy",
          "iam:GetRole",
          "iam:ListAttachedRolePolicies",
          "iam:ListInstanceProfilesForRole",
          "iam:PassRole",
          "iam:UpdateRole"
        ],
        "Effect": "Allow",
        "Resource": "*"
      }
    ]
  }
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| api\_name | n/a | `string` | `"hitme"` | no |
| appsync\_rolename | The name of the role to attach to appsync | `string` | `"Appsync"` | no |
| common\_tags | This is a map type for applying tags on resources | `map` | n/a | yes |
| datasource\_user\_name | n/a | `string` | `"hitme_user"` | no |
| lambda\_resolver\_arn | n/a | `string` | n/a | yes |
| request\_template | n/a | `any` | n/a | yes |
| response\_template | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| api | n/a |
| datasource | n/a |
| resolver | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-appsync/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-appsync/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-appsync&url=https://github.com/JamesWoolfenden/terraform-aws-appsync
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-appsync&url=https://github.com/JamesWoolfenden/terraform-aws-appsync
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-appsync
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-appsync
[share_email]: mailto:?subject=terraform-aws-appsync&body=https://github.com/JamesWoolfenden/terraform-aws-appsync
