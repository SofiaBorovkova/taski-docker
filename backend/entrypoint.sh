#!/bin/bash -x


python manage.py makemigrations --merge --noinput || exit 1
python manage.py migrate --noinput || exit 1
python manage.py collectstatic --noinput || exit 1
exec "$@"