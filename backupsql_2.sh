#!/bin/bash

# Set variables
USER="root"
PASSWORD="Sds@123"
DATABASE="thiennv"
BACKUP_DIR="/home/backup"
MAX_AGE=7

# Create backup directory if it does not exist
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Create backup file name
BACKUP_FILE="$BACKUP_DIR/$DATABASE-$(date +%Y-%m-%d_%H-%M-%S).sql"

# Create backup using mysqldump
mysqldump --routines --triggers --events --user=$USER --password=$PASSWORD $DATABASE > $BACKUP_FILE

# Remove backups older than MAX_AGE days
find $BACKUP_DIR -type f -name "$DATABASE-*.sql" -mtime +$MAX_AGE -exec rm {} \;
