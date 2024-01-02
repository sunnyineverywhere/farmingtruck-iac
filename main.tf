provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_key_pair" "core-server-key" {
  key_name = "qcard-kafka-key"
  public_key = file("${path.module}/ssh/id_rsa.pub")
}

output "key_pair_name" {
    value = aws_key_pair.core-server-key.key_name
}