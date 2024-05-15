resource "aws_iam_user" "terra-user-2" {
	name = "terra"
	tags = {
		Description = "Acc 2 using Terra"
	}
}

resource "aws_iam_policy" "terraUser" {
	name = "AdminUsers"
	policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "terra-admin-access" {
	user = aws_iam_user.terra-user-2.name
	policy_arn = aws_iam_policy.terraUser.arn
}	

