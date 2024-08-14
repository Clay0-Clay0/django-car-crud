#!/usr/bin/env bash
# Exit on error
set -o errexit

#instalacion de dependencias
pip install -r requirements.txt

#inicio de migracion
python manage.py migrate

#coleccion static de archivos
python manage.py collectstatic --no-input

#start server
gunicorn djangocrud.wsgi
