resource "aws_s3_object" "upload" {
  bucket = "some-bucket"
  key = "foto.jpg"
  source = "/src/foto.jpg"
}