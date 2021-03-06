environment = "dev"
s3_bucket = "dev.ops-work.net" #Will be used to set backend.tf 
s3_folder_project = "application" #Will be used to set backend.tf 
s3_folder_region = "eu-west-1"    #Will be used to set backend.tf 
s3_folder_type = "state"          #Will be used to set backend.tf 
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
max_size = "48"
min_size = "3"
bastion_min-size = "1"
bastion_max-size = "1"
cidr_block = "172.20.0.0/16"