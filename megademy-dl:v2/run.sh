#!/bin/sh
###  Variables
unset username
unset password
unset passwordmega

echo -n "Usuario registrado udemy:"
    read username

  printf "Password udemy: "
    stty -echo
    read password
    stty echo
  printf '\n'

sleep 1
echo "Pegue la url del curso a descargar"
    read url
sleep 1

echo -n "Correo registrado Mega:"
    read mailmega
printf "Password Mega: "
    stty -echo
    read passwordmega
    stty echo
  printf '\n'
sleep 1
echo -n "Escriba la cifra en MB para dividirlo y subirlo a Mega.gz"
    read mb
    
let sizevolume=$mb*1000000

docker run -it --rm -e USERNAME=$username -e PASSWORD=$password -e URL=$url -e SIZEVOLUME=$sizevolume -e MAILMEGA=$mailmega -e PASSWORDMEGA=$passwordmega megaudemy-dl:v2
