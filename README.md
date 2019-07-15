A simple script to send a test message to a remotehost on a given port
======================================================================
*At times, you are just too tired of typing `echo hello | nc -l`...here
is the script to be used by other programs*

This script, `port_establish.sh`, returns `1` if it cannot establish
a connection to remotehost on a given port. I saw...who knows?

Usage
=====
**On remote host machine `mickey`**
```
$ TIMEOUT=60 PORT_NUMBER=4242 ./port_listen.sh

# or just
$ nc -l 4242
```

**On a host machine `minnie`**
```
$ MSG="Pluto is comming" PORT_NUMBER=4242 REMOTE_HOST=mickey ./port_establish.sh
```


The counterpart of this is [`port_listen`][0].

__author__: *tuan t. pham*


[0]: https://github.com/neofob/port_listen
