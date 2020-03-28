#!/bin/sh
set -eax

black --version
black --line-length $1 --check $2