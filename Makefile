
install:
	cp data/primaries.csv /tmp
	mysql -p < scripts/sql-table.sql
