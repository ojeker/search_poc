# Skript can only be run in one piece if all api calls return without error.
# When in doubt -> run separately....

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "class"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "id"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "display"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "search_1"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "search_2"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{"delete-field": {"name": "search_3"}}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "class",
		"type": "string",
		"stored": true,
		"indexed": true,
		"uninvertible": true,
		"required": true
	}
}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "id",
		"type": "string",
		"stored": true,
		"required": true
	}
}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "display",
		"type": "strings",
		"stored": true,
		"required": true
	}
}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "search_1",
		"type": "text_de",
		"stored": true,
		"indexed": true,
		"uninvertible": true,
		"required": true
	}
}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "search_2",
		"type": "text_de",
		"stored": true,
		"indexed": true,
		"uninvertible": true
	}
}
' http://localhost:8983/solr/gdi/schema

curl -X POST -H 'Content-type:application/json' --data-binary '
{
	"add-field": {
		"name": "search_3",
		"type": "text_de",
		"stored": true,
		"indexed": true,
		"uninvertible": true
	}
}
' http://localhost:8983/solr/gdi/schema



