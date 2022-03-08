



output printNam {
    value = "Hello ${var.username}. Your age is ${var.age}. First user is ${var.users[0]}"
}

output printUpperName {
    value = "First name is -> ${upper(var.users[0])}"
}
output userage {
    value = " Age from map is -> ${lookup(var.usersage, "ram")}"
}