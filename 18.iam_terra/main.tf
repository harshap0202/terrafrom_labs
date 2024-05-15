resource "aws_iam_user" "admin-user" {
	name = "terra_user"
	tags = {
		Description = "IAM account made using terraform"
	}
}
