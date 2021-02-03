#!/bin/bash

mkdir -p pyodide
test -f pyodide-build-0.16.1.tar.bz2 || curl -L -O https://github.com/iodide-project/pyodide/releases/download/0.16.1/pyodide-build-0.16.1.tar.bz2
# extract into pyodide/
tar xvjf pyodide-build-0.16.1.tar.bz2 -C .
cd pyodide/ && python -m http.server 8080
