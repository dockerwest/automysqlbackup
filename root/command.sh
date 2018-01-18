#!/bin/sh
set -e

if [ "${CRON}" ]; then
    exec /entrypoint.sh go-cron -s "${CRON}" -- /bin/sh -c "$@"
else
    exec /entrypoint.sh "$@"
fi
