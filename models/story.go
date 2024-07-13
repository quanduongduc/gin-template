package models

type Story struct {
    Id       int64
    Title    string
    AuthorId int64
    Author   *User `pg:"rel:has-one"`
}
