resource "local_file" "pet" {
  filename = each.value
  for_each = toset(var.filename) //pasas el nombre del resource
  //filename = var.filename[count.index]
  content = "really"
  //count = length(var.filename)
}