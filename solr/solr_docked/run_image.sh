# Steps documented in detail under: https://hub.docker.com/_/solr/

# Create the home dir for solr. Only needs to be done the frist time
# mkdir mysolrhome
# sudo chown 8983:8983 mysolrhome

# Put the config files in mysolrhome. Only needs to be done the frist time
# docker run -it -v $PWD/mysolrhome:/opt/mysolrhome -e SOLR_HOME=/opt/mysolrhome solr bash -c "cp -R /opt/solr/server/solr/* /opt/mysolrhome"

docker run --name my_solr -t -v $PWD/mysolrhome:/opt/mysolrhome -e SOLR_HOME=/opt/mysolrhome -p 8983:8983 solr

# Create the core "gdi". Only needs to be done the frist time with running container "my_solr"
# docker exec -it --user=solr my_solr bin/solr create_core -c gdi

# Turn of data driven schema mode (schemaless)
# docker exec -it --user=solr my_solr bin/solr config -c gdi -p 8983 -action set-user-property -property update.autoCreateFields -value false

# Daten wurden mittels csv in Solr "rein gepumpt". Mit view "objects_v", in welcher mit create_series auch Fülldaten generiert werden. CSV mit DBeaver erstellt; in Header die Hochkommas entfernen, Index auf einmal importieren.

# Was gilt es herauszufinden?
# - Performance bei 1mio plus Dokumenten im Index
# - Verhalten bezüglich id's
# - Verhalten bezüglich Zusammengesetzter Wörter: Findet "Bahnhof" und "Platz" eine Adresse "Bahnhofplatz" --> JA
# - Verhalten bezüglich Wildcards: "Bah" -> "Bahnhof", "nhof" -> "Bahnhof" --> JA
# - "Default" Ranking: Treffer in Titel ist relevanter wie Treffer in Beschreibung --> mittels ^ positiv oder negativ boosten
# - "Custom" Ranking: Aufgrund Doku sicherstellen, dass richtig verstanden.

# Fragestellungen
#- Suche einer kleinen Hausnummer in langen Strassen. Die Wildcardsuche ist hier weniger genau wie erwartet --> search_1:*So* AND search_1:*enstein* AND (search_1:1 OR search_1:*1*^0.5)
#- Sicherstellen, dass hochprioritäre strings auch in den tieferen gefunden werden --> hochprio in den tiefen auch einbeziehen. Bsp: Synonyme umfasst auch den Titel. Beschreibung umfasst auch Titel und Synonyme usw.

