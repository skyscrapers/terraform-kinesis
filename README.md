# terraform-kinesis

Terraform module to setup an AWS Kinesis stream, add Cloudwatch alerts and push them to SNS. 

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | Environment to deploy on | string | n/a | yes |
| kinesis\_retention\_period | Retention period for the data in the kinesis stream | string | `"24"` | no |
| kinesis\_shard\_count | Number of shards to deploy in the stream | string | `"1"` | no |
| name | Name of the stack | string | n/a | yes |
| project | Project name to use | string | n/a | yes |
| sns\_topic\_arn | SNS topic to push the alerts of the monitoring to | string | n/a | yes |
| tags | List of map of additional tags | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_kinesis\_stream\_arn | The Amazon Resource Name (ARN) specifying the Stream (same as id) |
| aws\_kinesis\_stream\_id | The unique Stream id |
| aws\_kinesis\_stream\_name | The unique Stream name |
| aws\_kinesis\_stream\_shard\_count | The count of Shards for this Stream |
