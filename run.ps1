
Get-Content .\main.sql -Raw | docker exec -i postgres-dev psql -U postgres -d practice_db
