#!/bin/sh

# One command for creating CSR with UNENCRYPTED private key

CERT_NAME=$1

openssl req -new \
  -keyout ${CERT_NAME}.key -nodes \
  -out ${CERT_NAME}.csr \
  -subj "/C=HK/CN=${CERT_NAME}"


