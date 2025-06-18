#!/bin/bash

# Default values – adjust if needed
ODOO_DIR=odoo
ADDONS_PATH=odoo/addons,custom_addons
DB_HOST=$DB_HOST
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD

# Run Odoo
python3 $ODOO_DIR/odoo-bin \
  --addons-path=$ADDONS_PATH \
  --db_host=$DB_HOST \
  --db_user=$DB_USER \
  --db_password=$DB_PASSWORD \
  --db_name=$DB_NAME \
  --log-level=info \
  --http-port=10000 \
  --limit-time-real=600 \
  --limit-memory-soft=268435456 \
  --limit-memory-hard=536870912
