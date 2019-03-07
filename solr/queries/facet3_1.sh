# query for to terms in all three search fields with boosting

curl -G \
--data-urlencode "omitHeader=true" \
--data-urlencode "q=(search_1:*$1*^2 AND search_1:*$2*^2 AND search_1:*$3*^2)" \
--data-urlencode "fl=display" \
--data-urlencode "facet=true" \
--data-urlencode "facet.field=class" \
http://localhost:8983/solr/gdi/select






