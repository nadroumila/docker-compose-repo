#!/bin/bash



if [ ! "$(docker ps -q -f name=mysql)" ]; then
    echo 'does not exit'
    if [ "$(docker ps -aq -f status=exited -f name=mysql)" ]; then
        # cleanup
        echo 'is to delete'
        docker rm mysql_5.7
    fi
    # run your container
    echo "is to start"
    docker-compose -f docker-compose-mysql57.yml up -d
fi
