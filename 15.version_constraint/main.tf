terraform {
	required_providers {
		local = {
			source = "hashicorp/local"
			version = "2.5.1"
		}	
	}
}

resource "local_file" "pet" {
	filename = "pets.txt"
	content = "Pets are awesome!"
}
