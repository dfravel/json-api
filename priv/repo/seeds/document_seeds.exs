alias JsonApi.Repo
alias JsonApi.Management.Document

Repo.insert! %Document{
    name: "Super Cool Document 1",
    content: "This document is great",
    view_count: 1,
    published: false,
    project_id: 1
}

Repo.insert! %Document{
    name: "Super Cool Document 2",
    content: "This project is the best project ever",
    view_count: 1,
    published: false,
    project_id: 2
}

Repo.insert! %Document{
    name: "Super Cool Document 3",
    content: "This project is the best project ever",
    view_count: 7,
    published: true,
    project_id: 3
}

Repo.insert! %Document{
    name: "Super Cool Document 4",
    content: "This project is the best project ever",
    view_count: 1,
    published: true,
    project_id: 3
}

