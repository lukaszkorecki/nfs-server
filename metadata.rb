# encoding: utf-8
name             "nfs-server"
maintainer       "Łukasz Korecki"
maintainer_email "lukasz@coffeesounds.com"
license          "MIT"
description      "Installs nfs-server and configures a directory to be shared"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1"

supports "ubuntu"

recipe "nfs-server::install", 'Installs nfs-server'
recipe "nfs-server::expose", "Exposes given directory(ies) to the outside world"
