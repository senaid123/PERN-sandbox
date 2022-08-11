#!/bin/bash

echo "Configuring drragonstackdb"

dropdb -U postgres dragonstackdb
createdb -U postgres dragonstackdb


psql -U postgres dragonstackdb < ./bin/sql/generation.sql
psql -U postgres dragonstackdb < ./bin/sql/dragon.sql


echo "dragonstack configured"