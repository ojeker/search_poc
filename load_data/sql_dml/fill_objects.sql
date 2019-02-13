WITH fill_objects AS (
	SELECT 
		'ch.so.agi.search_poc.bodenbedeckung' AS class_prefix,
		t_id AS id_in_class,
		art_txt AS displaytext,
		LOWER(art_txt) AS searchtext_1
	FROM agi_mopublic_pub.mopublic_bodenbedeckung
)

SELECT class_prefix || '.1' AS class, id_in_class, displaytext, searchtext_1 FROM fill_objects
	UNION ALL
SELECT class_prefix || '.2' AS class, id_in_class, displaytext, searchtext_1 FROM fill_objects
	UNION ALL
SELECT class_prefix || '.3' AS class, id_in_class, displaytext, searchtext_1 FROM fill_objects
	UNION ALL
SELECT class_prefix || '.4' AS class, id_in_class, displaytext, searchtext_1 FROM fill_objects
;
	
	


