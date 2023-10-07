#!/bin/sh
#
# https://docs.docker.com/engine/reference/builder/#healthcheck
#

set -e

if [ ! -f /run/pg/init_done.flag ]; then
    # See for creation of /run/pg/init_done.flag in docker-entrypoint.sh
    echo "PostgreSQL does not initialized yet. Be patient..." >&2
    # 1: unhealthy - the container is not working correctly
    exit 1
fi

if pg_isready --dbname=devdb --username=devuser; then
    # 0: success - the container is healthy and ready for use
    exit 0
fi

# 1: unhealthy - the container is not working correctly
exit 1