CREATE TABLE searchobjects (	
    class TEXT NOT NULL,
    id_in_class INTEGER NOT NULL,
    displaytext TEXT NOT NULL,
    searchtext_1 TEXT NOT NULL,
    searchtext_2 TEXT,
    searchtext_3 TEXT
)
;


--CREATE TABLE searchobjects (	
--    class TEXT NOT NULL,
--    id_in_class INTEGER NOT NULL,
--    displaytext TEXT NOT NULL,
--    searchtext_1 TEXT NOT NULL,
--    searchtext_2 TEXT,
--    searchtext_3 TEXT,
--    vec_1 TSVECTOR NOT NULL,
--    vec_2 TSVECTOR,
--    vec_3 TSVECTOR
--)
--;