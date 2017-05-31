#!/bin/sh

USER_ID=${LOCAL_USER_ID:-9001}

echo "=> Starting with UID : $USER_ID"

if [ "x$USER_ID" != "x0" ] ; then
    adduser -D -u $USER_ID user

    export HOME=/home/user

    mkdir -p /home/user

    chown $USER_ID:$USER_ID $COMPOSER_CACHE_DIR

    gosu user composer "$@"
else 
    composer "$@"
fi