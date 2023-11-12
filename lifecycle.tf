resource "local_file" "pet" {
  filename = "petss.txt"
  content = "We love pets!"
  file_permission = "0700"

  lifecycle {
    //prevent_destroy = false
    create_before_destroy = true
  }
  lifecycle {
    ignore_changes = [ 
        tags, ami
     ]
     //ignore_changes = all
  }
}