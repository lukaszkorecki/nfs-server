# nfs-server cookbook

Tiny cookbook for setting up nfs server and exposing a set of directories.
Intended for use with Vagrant

## Setup

Couple of notes:

- it was tested with Ubuntu 12.04 (Precise)
- it allows exposing only one directory (but it can be Vagrat user's home dir!)

There are two attributes which might need to be set depending on your setup.

> I'm assuming that your Vagrant VM is accessible on IP `192.168.33.10` and your VM
username is `vagrant`.


```json
{
  "nfs-server" : {
    "ip-range" : "192.168.33.*",
    "mount-point" : "/home/vagrant/src"

  }
}
```

Then simply include `recipe[nfs-server]` in your run list and provision your
machine.

Once chef run is complete your share is accessible at:

`nfs://192.168.33.10/home/vagrant/src`


# License
The MIT License (MIT)

Copyright (c) 2014 Łukasz Korecki

