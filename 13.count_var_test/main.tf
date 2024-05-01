resource "local_file" "file" {
	filename = var.filename[count.index]
	content = "test complete"
	count = length(var.filename)
}
