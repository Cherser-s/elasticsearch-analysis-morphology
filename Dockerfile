FROM docker.elastic.co/elasticsearch/elasticsearch:9.1.5
COPY /target/releases/elasticsearch-analysis-morphology-9.1.5.zip /tmp/elasticsearch-analysis-morphology-9.1.5.zip
RUN bin/elasticsearch-plugin install file:/tmp/elasticsearch-analysis-morphology-9.1.5.zip
