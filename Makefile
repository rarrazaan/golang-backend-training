migrateup:
	migrate -path db/migration -database "postgresql://rafiif:password@localhost:5432/rafiif?sslmode=disable" -verbose up
migratedown:
	migrate -path db/migration -database "postgresql://rafiif:password@localhost:5432/rafiif?sslmode=disable" -verbose down
sqlc:
	sqlc generate
.PHONY: migrateup migratedown