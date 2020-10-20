resource "aws_iam_role" "appsync" {
  name               = var.appsync_rolename
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "appsync.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
  tags               = var.common_tags
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.appsync.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs"
}

variable "appsync_rolename" {
  type        = string
  description = "The name of the role to attach to appsync"
  default     = "Appsync"
}
