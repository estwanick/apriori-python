cd db

find . -name "*.db" -type f -delete

sqlite3 kmart.db < ./sql/populate-kmart.sql;
sqlite3 amazon.db < ./sql/populate-amazon.sql;
sqlite3 shoprite.db < ./sql/populate-shoprite.sql;
sqlite3 walmart.db < ./sql/populate-walmart.sql;
sqlite3 wawa.db < ./sql/populate-wawa.sql;

find . -name "*.db" -type f