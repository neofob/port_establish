#!/usr/bin/env bash
# __author__: tuan t. pham

# Requirements: netcat

PORT_NUMBER=${PORT_NUMER:=3000}
EST_APP=${EST_APP:=nc}
APP_OPTS=${APP_OPTS:="-q0"}
REMOTE_HOST=${REMOTE_HOST:=localhost}
MSG=${MSG:="The quick brown fox jumps over the lazy gray dog"}

which ${EST_APP} >/dev/null
if [[ $? != 0 ]]; then
    echo "${EST_APP} does not exist!"
    exit 1
fi

echo ${MSG} | ${EST_APP} ${APP_OPTS} ${REMOTE_HOST} ${PORT_NUMBER}

exit $?
