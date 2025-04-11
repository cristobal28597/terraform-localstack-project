provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"
  endpoints {
    s3 = "http://192.168.1.137:4566"
    sts = "http://192.168.1.137:4566"  # Redirige STS a LocalStack
  }
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}
module "mi_recurso" {
  source      = "./modules/mi-recurso"
  bucket_name = "mi-modulo-bucket"
}

