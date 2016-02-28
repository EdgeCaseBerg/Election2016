# You need to have mysql installed. The below mysql func will run as the user running `make`

install:
	cp data/primaries.csv /tmp
	chmod 777 /tmp/primaries.csv
	mysql -p < scripts/sql-table.sql
	rm /tmp/primaries.csv
