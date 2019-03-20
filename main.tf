resource "aws_kinesis_stream" "kinesis_stream" {
  name             = "${var.project}-${var.name}-${var.environment}"
  shard_count      = "${var.kinesis_chard_count}"
  retention_period = "${var.kinesis_retention_period}"

  tags = "${var.tags}"
}

module "kinesis_stream_monitoring" {
  source              = "github.com/skyscrapers/terraform-cloudwatch//kinesis?ref=1.0.0"
  kinesis_stream_name = "${aws_kinesis_stream.kinesis_stream.name}"
  sns_topic_arn       = "${var.sns_topic_arn}"
}
