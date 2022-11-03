#!/bin/sh

set -e

while ! mysqladmin ping -h"mysql" --silent; do
    sleep 1
done

>&2 echo "Mysql is up and running ✔"

