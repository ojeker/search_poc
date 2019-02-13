SELECT 
	'ch.so.agi.av.grundstuecke.rechtskraeftig' AS class,
	t_id AS id_in_class,
	'nbident num: ' || nbident || ' ' || nummer || ' egrid: ' || egrid || ' (Grundstück)' AS displaytext,
	LOWER(nbident || ' ' || nummer || ' ' || egrid) AS searchtext_1
FROM 
	agi_mopublic_pub.mopublic_grundstueck
WHERE 
	nbident IS NOT NULL
		AND 
			nummer IS NOT NULL
				AND
					egrid IS NOT NULL
;

