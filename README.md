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

Copyright (c) 2014 Łukas Korecki

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

