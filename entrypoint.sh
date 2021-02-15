#!/bin/sh
FECHA=`date '+%Y%m%d%H%M'`
python /usr/src/udemy-dl/udemy-dl.py \
            ${URL} \
           -u $USERNAME \
           -p ${PASSWORD} \
           -o "/data"
           --info
$ARGS
NAME=`ls /data/`
tar -czvf $NAME$FECHA.tar.gz /data/
megaput -u ${MAILMEGA} -p ${PASSWORDMEGA} $NAME$FECHA.tar.gz
rm /data/ -Rv
rm $NAME$FECHA.tar.gz
