#!/bin/sh
set -e

if [ "${CRON}" ]; then
    exec go-cron -s "${CRON}" -- /bin/sh -c "$@"
else
    exec "$@"
fi
