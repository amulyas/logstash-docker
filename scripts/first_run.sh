#!/bin/bash
echo "inside firstrun"
ELASTICSEARCH_USERNAME=${ELASTICSEARCH_USERNAME:-esadmin}
ELASTICSEARCH_PASSWORD=${ELASTICSEARCH_PASSWORD:-$(pwgen -s -1 16)}

echo " $ELASTICSEARCH_USERNAME "
echo " $ELASTICSEARCH_PASSWORD"

echo "http.basic.enabled: true" >> /etc/elasticsearch/elasticsearch.yml
echo "http.basic.user: "${ELASTICSEARCH_USERNAME}"" >>  /etc/elasticsearch/elasticsearch.yml
echo "http.basic.password: "${ELASTICSEARCH_PASSWORD}"" >> /etc/elasticsearch/elasticsearch.yml
rm -f /.firstrun
