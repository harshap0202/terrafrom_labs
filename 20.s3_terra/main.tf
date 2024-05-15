resource "aws_s3_bucket" "test_bucket" {
	tags = {
		Description = "Acc 2 using Terra"
	}
}

resource "aws_s3_bucket_object" "bucket_data" {
	content = "/data/test.txt"
	key = "text.txt"
	bucket = aws_s3_bucket.test_bucket.id
}


