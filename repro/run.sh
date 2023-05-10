#!/usr/bin/env bash

docker run -it --rm --init -v "$(pwd)/../:/greenlet" --name greenlet greenlet
