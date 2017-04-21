#!/bin/sh
docker pull alpine

docker build --no-cache -t dockerwest/automysqlbackup .
