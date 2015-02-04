Bridge Docker Container
====
Builds and deploys in a docker container on Fleet / CoreOS

## Running it
```
/usr/bin/docker run --rm --name videobridge \
  -e PRIVATE_IP=$COREOS_PRIVATE_IPV4 \
  -e PUBLIC_IP=$COREOS_PUBLIC_IPV4 \
  --net host \
  jvliwanag/videobridge:latest \
    --domain=connecter.io \
    --host=172.17.42.1 \
    --port=8889 \
    --subdomain=videobridge \
    --secret=secret
```

## To Do
Need to specify exact media port range (UDP)
