resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!"
	depends_on = [
		random_pet.info
	]
}

resource "random_pet" "info" {
	prefix = "My"
	separator = "-"
	length = "2"
}
