#!/bin/bash

service mysql start

echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > db.sql

echo "CREATE USER IF NOT EXISTS