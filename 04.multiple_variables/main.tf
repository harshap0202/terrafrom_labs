resource "local_file" "file" {
	filename = var.filename
	content = "test complete"
}

resource "local_file" "str_file" {
        filename = "string_file"
        content = var.str
}

resource "local_file" "bool_file" {
        filename = "boolean_file"
        content = var.boolean
}

resource "local_file" "any_file" {
        filename = "any_file"
        content = var.any
}

resource "local_file" "num_file" {
        filename = "number_file"
        content = var.num
}

output "ansout" {
	value = local_file.file.content
}

output "strout" { 
        value = local_file.str_file.content
}
