#!/bin/bash

SYNC_DIR=(
    '/Volumes/data/GitProject/springboot-learning'
    '/Volumes/data/GitProject/mp-shop'
    '/Volumes/data/GitProject/vue-learning'
)

for DIR in ${SYNC_DIR[@]}
do
    echo "cd $DIR"
    cd ${DIR} && git pull &&  git add . && git commit -m "update" && git push
    echo ""
done



