#!/bin/bash -l

cat <<EOF >apm-server.yml
apm-server:
    host: "0.0.0.0:8080"
    secret_token: "${ES_ADDON_APM_AUTH_TOKEN}"

output.elasticsearch:
    hosts: ["${ES_ADDON_HOST}:443"]
    protocol: "https"
    username: "${ES_ADDON_APM_USER}"
    password: "${ES_ADDON_APM_PASSWORD}"

path.home: "${APP_HOME}"

logging:
    to_syslog: true
    to_files: false

apm-server.rum.enabled: true
EOF
