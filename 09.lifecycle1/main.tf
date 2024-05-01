resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!"
	file_permission = "0700"
	
	lifecycle {
		create_before_destroy = true
	}
}
