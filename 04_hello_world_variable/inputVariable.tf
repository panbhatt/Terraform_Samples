variable username {
    default = "World"
    type = string
}

variable age {
    type = number
}

variable users {
    type = list
    default = ["pankaj", "Abhinandnib", "sha"]
}

variable usersage {
    type = map(string)
    default = {
        ram = 10
        shyam = 20
    }
}