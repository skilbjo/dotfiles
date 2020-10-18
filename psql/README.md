## SSL create / renew cert
from <https://www.postgresql.org/docs/current/ssl-tcp.html>

### Do this
openssl req -new -nodes -text \
  -subj "/CN=pfsense2." \
  -out root.csr \
  -keyout root.key

chmod og-rwx root.key

openssl x509 -req -text  \
  -in root.csr \
  -days 3650 \
  -extfile /etc/ssl/openssl.cnf \
  -extensions v3_ca \
  -signkey root.key \
  -out root.crt

openssl req -new -nodes -text \
  -subj "/CN=pfsense2." \
  -out server.csr \
  -keyout server.key

chmod og-rwx server.key

openssl x509 -req -text \
  -CA root.crt \
  -CAkey root.key \
  -CAcreateserial \
  -in server.csr \
  -days 365 \
  -out server.crt

# other
## create crt
openssl req -new -x509 -nodes -text \
  -subj "/CN=pfsense2." \
  -days 365 \
  -out server.crt \
  -keyout server.key

## create crt

openssl req -new -key server.key -days 3650 -out server.crt -x509 -subj '/C=CA/ST=British Columbia/L=Comox/O=TheBrain.ca/CN=thebrain.ca/emailAddress=info@thebrain.ca'

chmod 600 server.key server.crt
chown postgres server.key server.crt
chgrp postgres server.key server.crt


