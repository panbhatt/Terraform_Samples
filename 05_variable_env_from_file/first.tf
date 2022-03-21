# -var-file=dev.vars

variable age {
    type = number
    default = 10
}

variable  username {
    type=string
    default = ""
}

output message {
    value = "Username -. ${var.username} Age -> ${var.age}"
}


// terraform plan -var-file=dev.tfvars