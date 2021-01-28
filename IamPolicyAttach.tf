resource "aws_iam_policy" "policy" {
  name = "${var.policyname}"
  path = "/"
   policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "policy-attach" {
  name = "policy-attachment"
  roles = ["${var.attachrole}"]
  policy_arn = aws_iam_policy.policy.arn
}

