#!/bin/sh
FECHA=`date '+%Y%m%d%H%M'`
python /usr/src/udemy-dl/udemy-dl.py \
            ${URL} \
           -u $USERNAME \
           -p ${PASSWORD} \
           -o "/data/Curso"
           --info
$ARGS
NAME=`ls /data/Curso`
tar -czvf $NAME$FECHA.tar.gz /data/Curso
megaput -u ${MAILMEGA} -p ${PASSWORDMEGA} $NAME$FECHA.tar.gz
rm /data/Curso -Rv
rm $NAME$FECHA.tar.gz
