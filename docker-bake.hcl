variable "IMAGE" {
	default = "heussd/git"
}

variable "GIT_VERSION" {
}
variable "TAG_VERSION" {	
}

group "default" {
	targets = ["all"]
}

target "all" {
	tags = ["${IMAGE}:latest", "${IMAGE}:${TAG_VERSION}", "${IMAGE}:v${GIT_VERSION}"]
	platforms = ["linux/amd64", "linux/arm64", "linux/ppc64le", "linux/s390x", "linux/386", "linux/arm/v7", "linux/arm/v6"]
}
