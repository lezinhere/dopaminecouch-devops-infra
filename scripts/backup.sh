#!/bin/bash

BACKUP_DIR="/backup"
DATE=$(date +%F)

echo "Creating backup..."

docker exec mysql-container mysqldump -u root -pYOUR_PASSWORD your_db > $BACKUP_DIR/db-$DATE.sql

echo "Backup completed: $BACKUP_DIR/db-$DATE.sql"