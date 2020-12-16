#!/bin/bash
HOST_SHARE="/private/var/tmp/share"
CTR_SHARE="/share"
mkdir "$HOST_SHARE" 2>/dev/null
#docker run -it -p "127.0.0.1:4242:4242" --mount "type=bind,source=${HOST_SHARE},target=${CTR_SHARE}" --name ${PWD##*/} ${PWD##*/} 2>&1

docker-compose run app
