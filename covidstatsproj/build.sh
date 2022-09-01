#!/usr/bin/env bash
# exit on error
cd ./covidstatsproj
set -o errexit

poetry install

python manage.py collectstatic --no-input
python manage.py migrate

