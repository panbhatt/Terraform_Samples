
#export TF_VAR_username=Pnakaj
# Everythign that is preprended via the TF_VAR_ woudl be available as a variable. 
# in this case, it would be username by default. 

variable username {
    type = string
}

output printName {
    value = "hello, ${var.username}"
}