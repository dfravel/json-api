alias JsonApi.Repo
alias JsonApi.Management.Project

Repo.insert! %Project{
    title: "Super Cool Project",
    description: "This project is the best project ever"
}

Repo.insert! %Project{
    title: "Super Cool Project 2",
    description: "This project is an even better project"
}

Repo.insert! %Project{
    title: "Lame ass Project",
    description: "This project blows"
}