// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.28.0

package db

import (
	"database/sql"
)

type Cars struct {
	ID        int32        `json:"id"`
	OwnerID   int32        `json:"owner_id"`
	Brand     string       `json:"brand"`
	Model     string       `json:"model"`
	Year      int32        `json:"year"`
	Price     string       `json:"price"`
	CreatedAt sql.NullTime `json:"created_at"`
}

type Owners struct {
	ID        int32        `json:"id"`
	Name      string       `json:"name"`
	Email     string       `json:"email"`
	Phone     string       `json:"phone"`
	CreatedAt sql.NullTime `json:"created_at"`
}
