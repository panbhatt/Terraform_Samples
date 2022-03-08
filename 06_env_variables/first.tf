
#export TF_VAR_username=Pnakaj


variable username {
    type = string
}

output printName {
    value = "hello, ${var.username}"
}