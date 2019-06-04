# GRETL environment variables for loading the production data

export DB_URI_PUB=$DB_URI_PUB_PROD_CHSO
export DB_USER_PUB=$DB_USER_SERVER_CHSO
export DB_PWD_PUB=$DB_PWD_SERVER_CHSO

export DB_URI_EDIT="jdbc:postgresql://localhost:5432/postgres"
export DB_USER_EDIT="postgres"
export DB_PWD_EDIT="postgres"


echo "======================================================="
echo "DB CREDENTIALS"
echo ""
echo "Server Pub URI: $DB_URI_PUB"
echo "Server Pub USER: $DB_USER_PUB"
echo "Server Pub PWD: $DB_PWD_PUB"
echo ""
echo "Local Edit URI: $DB_URI_EDIT"
echo "Local Edit USER: $DB_USER_EDIT"
echo "Local Edit PWD: $DB_PWD_EDIT"
echo "======================================================="

# Start local gretl
$(pwd)/start-gretl.sh --docker-image sogis/gretl-runtime:production --job-directory $(pwd)




