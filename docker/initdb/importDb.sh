#!/bin/bash
set -e


#TABLES="organisation organisation_name organisation_address organisation_contact organisation_parent organisation_predecessor organisation_predecessor_description organisation_type organisation_type_name subject subject_name subject_parent subject_predecessor subject_type subject_type_name"
TABLES="select organisation organisationView subject"

for TABLE in $TABLES
do
    if [ ! -f /data/$TABLE.imported ]; then
        psql -v ON_ERROR_STOP=1 -U diva diva < /data/$TABLE.sql > /data/$TABLE.log
        touch /data/$TABLE.imported
    fi
done