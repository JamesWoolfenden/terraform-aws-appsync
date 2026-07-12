resource "aws_iam_role" "appsync" {
  name                 = var.appsync_rolename
  max_session_duration = 43200
  assume_role_policy   = <<POLICY
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

}
resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.appsync.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs"
}

resource "aws_iam_role_policy" "invoke_lambda" {
  name   = "invoke-resolver-lambda"
  role   = aws_iam_role.appsync.name
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "${var.lambda_resolver_arn}"
    }
  ]
}
POLICY
}
