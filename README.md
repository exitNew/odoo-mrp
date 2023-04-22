# odoo-16

## User Login Odoo:
user: user@example.com
password: bitnami

### Or change in env file 
ODOO_EMAIL=<email>
ODOO_PASSWORD=<passowrd>

## Source:
https://linuxhint.com/install-odoo-15-ubuntu-22-04/

## Install before
apt install build-essential
apt install wheels
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_arm64.deb
apt install ./wkhtmltox_0.12.6.1-2.bullseye_arm64.deb
apt install libsasl2-dev python-dev libldap2-dev libssl-dev

## Problem
if `odoo.conf` didnt found
use `./addons:/mnt/extra-addons` in `docker-compose.yml` and copy addons to `/bitnami/odoo/addons` manually

remove docker volume with `docker volume prune`
then use `./addons:/bitnami/odoo/addons` again in `docker-compose.yml`
