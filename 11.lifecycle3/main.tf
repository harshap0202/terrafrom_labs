resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!!!"
	file_permission = "0700"
	
	lifecycle {
		ignore_changes = [
			content, file_permission
		]
	}
}
