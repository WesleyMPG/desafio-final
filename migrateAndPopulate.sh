#!/bin/bash

docker-compose run web python manage.py migrate
docker-compose run web python manage.py loaddata cadastro_de_bens/fixture/db_data.json

