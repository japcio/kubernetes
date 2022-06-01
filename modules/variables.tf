variable "name" {
    description = "The name for all resources created by this module"
    type = string
}

variable "image" {
    description = "Docker image to run"
    type = string
}

variable "container_port" {
    description = "Port the Docker image listens on"
    type = number
}

variable "replicas" {
    description = "Number of replicas to run"
    type = number
}

variable "environment_variables" {
    description = "Environment variables to set for the app"
    type = map(string)
    default = {}
}