resource "local_file" "eachfile" {
	filename = each.value
	for_each = toset(var.filename)
	content = var.content
}
