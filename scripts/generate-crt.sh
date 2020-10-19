# !/usr/env bash

CSR_FILE_NAME=testbank.csr
CRT_FILE_NAME=testbank.crt
KEY_FILE_NAME=testbank.key
EXPIRATION_DAYS=9999

openssl genrsa -out $KEY_FILE_NAME
openssl req -new -key $KEY_FILE_NAME -out $CSR_FILE_NAME
openssl x509 -req -days $EXPIRATION_DAYS -in $CSR_FILE_NAME -signkey $KEY_FILE_NAME -out $CRT_FILE_NAME
