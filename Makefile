DB_URL=postgresql://root:root@localhost:5432/carsDB?sslmode=disable

db_infra:
	docker compose up -d

migrateup:
	migrate -path cars-api/db/migration -database "$(DB_URL)" -verbose up

.PHONY: db_infra migrateup 
