# docker-haproxy
generic haproxy app with SSL packaged into a docker container

Use with 
```
docker run zsol/docker-haproxy -v /opt/blah/myssl.pem:/ssl.pem:ro -e SSL_KEY_AND_CERT=/ssl.pem \
    -e BACKENDS="apple:pear" \
    -e BACKEND_apple_HOSTPORT="apple:80" -e BACKEND_apple_PATH="/apple" \
    -e BACKEND_pear_HOSTPORT="pear:80"   -e BACKEND_pear_HOST="pear.example.com"
```
