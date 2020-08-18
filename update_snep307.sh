#!/bin/bash

git clone https://bitbucket.org/snepdev/snep-3.git /var/www/html/snep3

cp /var/www/html/snep/ /var/www/html/snep-bkp-${RANDOM}/
mv /var/www/html/snep/ /var/www/html/snep-old-${RANDOM}/

mv /var/www/html/snep3/ /var/www/html/snep/

mysql -u root -psneppass snep < /var/www/html/snep/install/database/update/3.07/update.sql
mysql -u root -psneppass snep < /var/www/html/snep/install/database/update/3.06.2/update.sql
