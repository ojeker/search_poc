SELECT 
	'ch.so.agi.av.gebaeudeadressen.gebaeudeeingaenge' AS class,
	t_id AS id_in_class,
	strassenname || ' ' || hausnummer || ', ' || plz || ' ' || ortschaft || ' (Adresse)' AS displaytext,
	LOWER(strassenname || ' ' || hausnummer || ' ' || plz || ' ' || ortschaft) AS searchtext_1
FROM agi_mopublic_pub.mopublic_gebaeudeadresse
;

--SELECT 
--	'ch.so.agi.av.gebaeudeadressen.gebaeudeeingaenge' AS class,
--	t_id AS id_in_class,
--	strassenname || ' ' || hausnummer || ', ' || plz || ' ' || ortschaft || ' (Adresse)' AS displaytext,
--	LOWER(strassenname || ' ' || hausnummer || ' ' || plz || ' ' || ortschaft) AS searchtext_1,
--	to_tsvector(LOWER(strassenname || ' ' || hausnummer || ' ' || plz || ' ' || ortschaft)) AS vec_1
--FROM agi_mopublic_pub.mopublic_gebaeudeadresse
--;
