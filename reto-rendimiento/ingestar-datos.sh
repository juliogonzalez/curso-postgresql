#!/bin/bash
for i in $(seq 1 1000); do echo "${i}|$(echo ${i}|md5sum|cut -d' ' -f1)"; done | psql -c "COPY public.test FROM STDIN DELIMITER '|';"
