-- name: CreateAccount :one
INSERT INTO owners (
  name,
  email,
  phone
) VALUES (
  $1, $2, $3
) RETURNING *;
