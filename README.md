# terraform-aws-cloudwatch-log-group
Repository managed by terraform (devops-git-repos) and deployed via Terraform Cloud // repo-creator: paul.greene

## Usage Example

`main.tf #contents`

```bash
module "aws_cloudwatch_log_group" {
  source = "git::https://github.com/Voyanta/terraform-aws-cloudwatch-log-group"
  submodule = "cw-log-group"
  path = "/aws/lambda/"
}
```

`data.tf #contents`

```bash
data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["your-vpc-tag"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}
```

## Variables

* **path** - path prefix for log group, such as "/aws/lambda/"
* **retention_in_days** - how long to retain the cloudwatch logs | default is set to 3 days

## Notes

This module creates a [cloudwatch event rule](https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logs:) | [terraform cloudwatch log group](https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html)
