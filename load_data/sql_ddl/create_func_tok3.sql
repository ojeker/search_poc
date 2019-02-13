DROP FUNCTION IF EXISTS tok3
;

CREATE FUNCTION tok3(user_input TEXT)
RETURNS TABLE(displaytext_v TEXT, class_v TEXT, id_in_class_v INTEGER, query_tokens_v TEXT, word_similarity_v REAL) AS $$
DECLARE
	tok1 TEXT := split_part(user_input, ' ', 1);
	tok2 TEXT := split_part(user_input, ' ', 2);
	tok3 TEXT := split_part(user_input, ' ', 3);
BEGIN
	RETURN QUERY
	    SELECT 
			displaytext AS displaytext_v, 
			class AS class_v,
			id_in_class AS id_in_class_v,
			tok1 || ' | ' || tok2  || ' | ' || tok3 AS query_tokens_v,
			word_similarity(tok1, searchtext_1) + word_similarity(tok2, searchtext_1) + word_similarity(tok3, searchtext_1) AS hit_index_v
		FROM 
			public.searchobjects
		WHERE
			searchtext_1 LIKE '%' || tok1 || '%'
				AND
					searchtext_1 LIKE '%' || tok2 || '%'
						AND	
							searchtext_1 LIKE '%' || tok3 || '%'
		ORDER BY
			word_similarity(tok1, searchtext_1) + word_similarity(tok2, searchtext_1) + word_similarity(tok3, searchtext_1)
				DESC
	;
END;
$$ LANGUAGE plpgsql
;
