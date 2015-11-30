# docker-haproxy
generic haproxy app with SSL packaged into a docker container

Use with `docker run zsol/docker-haproxy -e BACKENDS="apple:pear" -e BACKENDS_apple_NAME="apple" -e BACKENDS_apple_HOSTPORT="apple:80" -e BACKENDS_apple_PATH="/apple" -e BACKENDS_pear_NAME="pear" -e BACKENDS_pear_HOSTPORT="pear:80" -e BACKENDS_pear_PATH="/pear"`
