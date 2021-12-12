#!/bin/bash

docker-compose run back python manage.py migrate
docker-compose run back python manage.py loaddata cadastro_de_bens/fixture/db_data.json

