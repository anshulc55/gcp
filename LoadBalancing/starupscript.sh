#! /bin/bash
VALUE_OF_MY_MACHINE_ID=$(curl http://metadata.google.internal/computeMetadata/v1/instance/attributes/my-machine-id -H "Metadata-Flavor: Google")
apt-get update
apt-get install -y apache2
cat - >/var/www/html/index.html <<EOF
<html><body><h1>GCP Training : HTTP(S) Load Balancing Lab </h1>
<p>My Server Name is: $VALUE_OF_MY_MACHINE_ID</p>
</body></html>
EOF
