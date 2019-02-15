docker run -it \
    --name search_poc \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v $(pwd)/pgdata:/var/lib/postgresql/data/pgdata \
    -p 5432:5432 \
    --rm \
    postgres:11
