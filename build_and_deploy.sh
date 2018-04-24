#!/usr/bin/env bash
if [ -z $1 ]
then
    echo "Deploy failed. Usage:"
    echo "./build_and_deploy.sh path/to/scoir/bin/"
    exit 1
fi

. ./lint.sh
go build -o bin/golint golint
cp bin/golint $1