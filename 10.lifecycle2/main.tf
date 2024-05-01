resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!"
	file_permission = "0750"
	
	lifecycle {
		prevent_destroy = true
	}
}
