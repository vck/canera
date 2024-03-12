#!/bin/bash

clear
export CC=arm-linux-gnueabihf-gcc
export CGO_ENABLED=1
export GOOS=linux
export CGO_LDFLAGS="-Xlinker -rpath=./libnfc.so.5 -lnfc"
export GOARCH=arm

go build -ldflags "-s -w"
