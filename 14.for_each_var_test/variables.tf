variable "filename" {
	type = list(string)
	default = [
		"test1", "test2", "test3", "test1"
]
}

variable "content" {
	default = "made using for_each"
}
