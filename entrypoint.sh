#!/bin/sh

cd /github/workspace

echo "redoc openapi cli version: $(openapi --version)"

openapi lint $1
