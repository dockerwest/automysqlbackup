#!/bin/sh
docker pull blackikeeagle/alpine:3.5

docker build --no-cache -t dockerwest/automysqlbackup .
