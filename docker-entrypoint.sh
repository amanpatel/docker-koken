#!/bin/bash
set -euo pipefail

if ! [ -e /var/www/html/index.php ]; then
    cp /usr/local/src/koken/index.php /var/www/html/
    chown www-data:www-data /var/www/html/ index.php
fi

exec "$@"
