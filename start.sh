#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Optional: print each command for debugging
set -x

# Start Odoo with configuration
python3 odoo-bin \
  --addons-path=odoo/addons \
  --db_host=${DB_HOST:-localhost} \
  --db_port=${DB_PORT:-5432} \
  --db_user=${DB_USER:-odoo} \
  --db_password=${DB_PASSWORD:-odoo} \
  --db_name=${DB_NAME:-odoo} \
  --http-port=10000 \
  --log-level=info \
  --workers=2 \
  --max-cron-threads=1 \
  --limit-time-real=120 \
  --limit-time-cpu=60
