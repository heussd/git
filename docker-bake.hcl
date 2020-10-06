variable "IMAGE" {
	default = "heussd/git"
}

variable "GIT_FULL_VERSION" {
	default = "undefined"
}
variable "GIT_MAJOR_VERSION" {	
	default = "undefined"
}
variable "GIT_MAJOR_MINOR_VERSION" {
	default = "undefined"
}

group "default" {
	targets = ["all"]
}

target "all" {
	tags = ["${IMAGE}:latest", "${IMAGE}:${GIT_FULL_VERSION}", "${IMAGE}:${GIT_MAJOR_VERSION}", "${IMAGE}:${GIT_MAJOR_MINOR_VERSION}"]
	platforms = ["linux/amd64", "linux/arm64", "linux/ppc64le", "linux/s390x", "linux/386", "linux/arm/v7", "linux/arm/v6"]
}
