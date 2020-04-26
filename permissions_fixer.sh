#!/bin/bash

webroot=/var/backups/webs
backups=/var/www/webs

chmod -R 775 $backups
chown www-data:www-data $webroot -fR  &2>1 > /dev/null
chmod 750 $webroot -fR &2>1 > /dev/null
find $webroot -type d -exec chmod 755 -f {} +
find $webroot -type f -exec chmod 644 -f {} +
