resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!"
}

resource "random_pet" "info" {
	prefix = "My"
	separator = " "
	length = "1"
}
