pg_dump -U postgres -d songs -f ./arbie.sql -p 5430
pg_ctl -D ./data/postgres stop