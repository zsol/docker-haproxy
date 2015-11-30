FROM haproxy:1.6

RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/jwilder/dockerize/releases/download/v0.0.4/dockerize-linux-amd64-v0.0.4.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.4.tar.gz && \
    rm dockerize-linux-amd64-v0.0.4.tar.gz && apt-get clean

ADD haproxy.cfg.tmpl /usr/local/etc/haproxy/haproxy.cfg.tmpl

CMD dockerize -template /usr/local/etc/haproxy/haproxy.cfg.tmpl:/usr/local/etc/haproxy/haproxy.cfg
