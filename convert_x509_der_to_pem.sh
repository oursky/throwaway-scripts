#!/bin/sh

# Convert X509 cert from DER format to PEM format

IN_FILE=$1
cp ${IN_FILE} ${IN_FILE}.der
openssl x509 -inform der -in ${IN_FILE}.der -outform PEM -out ${IN_FILE}
rm ${IN_FILE}.der
