#!/bin/bash
sudo -u postgres psql testdb -c 'DROP TABLE IF EXISTS test; CREATE TABLE TEST (id SERIAL PRIMARY KEY, timestamp BIGINT NOT NULL)'
for i in $(seq 1 1000000); do echo ${i}; done | sudo -u postgres psql testdb -c 'COPY test (timestamp) FROM STDIN;'
sudo -u postgres psql testdb -c 'DROP TABLE IF EXISTS test2; CREATE TABLE TEST2 (id SERIAL PRIMARY KEY, timestamp BIGINT NOT NULL)'
for i in $(seq 1 1000000); do echo ${i}; done | sudo -u postgres psql testdb -c 'COPY test2 (timestamp) FROM STDIN;'
sudo -u postgres psql testdb -c 'DROP TABLE IF EXISTS test3; CREATE TABLE TEST3 (id SERIAL PRIMARY KEY, timestamp BIGINT NOT NULL)'
for i in $(seq 1 1000000); do echo ${i}; done | sudo -u postgres psql testdb -c 'COPY test3 (timestamp) FROM STDIN;'
