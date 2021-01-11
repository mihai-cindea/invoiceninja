#!/bin/bash
DIR="/etc/nginx/ssl/"
mkdir -p $DIR

if [[ -f $DIR/invoiceninja.crt ]];then
	echo "Cert already generated"
	exit
fi

# Generate our key
openssl genrsa 4096 > $DIR/invoiceninja.key

# Create the self-signed certificate for all invoiceninja
openssl req -new -x509 -nodes -sha256 -days 3650 -key $DIR/invoiceninja.key << ANSWERS > $DIR/invoiceninja.crt
RO
Timis
Timisoara
Myself
Me
*.dev
admin@localhost
ANSWERS

