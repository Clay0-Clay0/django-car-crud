#!/usr/bin/env bash
# Exit on error
set -o errexit

# poetry install
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --no-input
gunicorn djangocrud.wsgi