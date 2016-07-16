#!/usr/bin/env bash
KEYDIR=$(date +%F--%T)
mkdir $KEYDIR

openssl req -x509 -newkey rsa:2048 -keyout ./$KEYDIR/private_key.pem -out ./$KEYDIR/certficate.pem -days 366 -subj "/C=US/ST=Charlotte/L=NC/O=Ballance IT/OU=Org/CN=ballance.it" -nodes
