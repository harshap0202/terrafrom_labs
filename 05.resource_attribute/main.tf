resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Resource attribute = ${random_pet.info.id}"
}

resource "random_pet" "info" {
	prefix = "Mr"
	separator = "."
	length = "1"
}

