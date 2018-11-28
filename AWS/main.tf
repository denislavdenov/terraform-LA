provider "aws" {
    region = "${var.aws_region}"
}

# Deploy the storage resources
module "storage" {
    source = "./storage"
    project_name = "${var.project_name}"
}