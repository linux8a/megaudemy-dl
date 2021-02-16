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
tar -cvj /data |split -b ${SIZEVOLUME} -d - $NAME$FECHA.tbz.
megamkdir -u ${MAILMEGA} -p ${PASSWORDMEGA} /Root/$FECHA/
megaput -u ${MAILMEGA} -p ${PASSWORDMEGA} --path=/Root/$FECHA/ $NAME$FECHA.tbz.*
rm /data/ -Rv
rm $NAME$FECHA.tbz.*
