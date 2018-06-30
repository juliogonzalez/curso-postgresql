#!/bin/bash
sudo -u postgres psql -c 'DROP TABLE IF EXISTS test; CREATE TABLE TEST (id SERIAL PRIMARY KEY, timestamp BIGINT NOT NULL)'
for i in $(seq 1 1000000); do echo ${i}; done | sudo -u postgres psql -c 'COPY test (timestamp) FROM STDIN;'
