resource "local_file" "my-pet"  {
        filename = var.filename
        //content = var.file-content["statement2"]
        content = "My favorite pet is ${random_pet.my-pet.id}"
        depends_on = [ 
                random_pet.my-pet 
        ]
}
resource "random_pet" "my-pet" {
        prefix = var.prefix[2]
        separator = var.separator
        length = var.length
}

