# TCS_Inframind_2019

> To build MySQL Docker container, run:

`docker build -t gary29198/inframind-db:latest ./db`

> To build Maven Application Docker container, run:

`docker build -t gary29198/inframind-app:latest ./app`

> To run MySQL Docker container, run:

`docker run --name=db -d -p 3306:3306 gary29198/inframind-db:latest`

> To run Maven Application Docker container, run:

`docker run --name=app -d -p 8080:8080 gary29198/inframind-app:latest`
