WITH 
sik_codes AS (
	SELECT 
		code_id, 
		code_text
	FROM
		metadb.codes
	WHERE 
		code_typ_id = 5
),
ds_attributes AS (
	SELECT 
		table_schema || '.' || table_name AS qual_name,
		string_agg(table_attribut, ', ') AS attr_names,
		string_agg(table_comment, ', ') AS attr_descriptions
	FROM metadb.attribute_pg
	GROUP BY table_schema, table_name
)


SELECT 
	'dataset' AS class,
	id AS id_in_class,
	thema || ' (Datensatz)' AS displaytext,
	LOWER(thema) AS searchtext_1,
	LOWER(code_text || ', ' || attr_names) AS searchtext_2,
	LOWER(descr || ', ' || attr_descriptions) AS searchtext_3
FROM metadb.descr
	INNER JOIN
		sik_codes 
			ON descr.sik_id = sik_codes.code_id	
	INNER JOIN
		ds_attributes
			ON descr.postgis = ds_attributes.qual_name
;


