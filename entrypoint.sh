#!/bin/sh
# Based on https://raw.githubusercontent.com/brainsam/pgbouncer/master/entrypoint.sh

set -e

# Here are some parameters. See all on
# https://pgbouncer.github.io/config.html

PG_CONFIG_DIR=/etc/pgbouncer

if [[ -z "$ENVIRONMENT" ]] ; then
    ENVIRONMENT=prod
fi

if [[ -f "/environments/${ENVIRONMENT}/pgbouncer.ini" ]] ; then
    cp "/environments/${ENVIRONMENT}/*" $PG_CONFIG_DIR
fi

if [[ -f "/environments/pgbouncer.ini" ]] ; then
    cp /environments/pgbouncer.ini $PG_CONFIG_DIR
fi

if [[ -f "/environments/userlist.txt" ]] ; then
    cp /environments/userlist.txt $PG_CONFIG_DIR
fi

exec "$@"
