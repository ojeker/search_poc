docker run -it \
    --name search_poc \
    -e POSTGRES_PASSWORD=postgres \
    -p 5432:5432 \
    --rm \
    postgres:11
