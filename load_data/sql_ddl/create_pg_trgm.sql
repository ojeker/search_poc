CREATE EXTENSION IF NOT EXISTS pg_trgm
;

--CREATE INDEX idx_searchobjects_1 ON searchobjects USING GIN (vec_1);
--CREATE INDEX idx_searchobjects_2 ON searchobjects USING GIN (vec_2);
--CREATE INDEX idx_searchobjects_3 ON searchobjects USING GIN (vec_3);