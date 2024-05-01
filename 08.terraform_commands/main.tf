resource "local_file" "pet" {
  filename = "pets.txt"
  content  = "Pets are awesome!"
}

resource "random_pet" "info" {
  prefix    = "My"
  separator = "-"
  length    = "2"
}

output "file-output" {
  value = local_file.pet.content
}

output "pets-output" {
  value = random_pet.info.id
}
