docker stop db app
docker rm db app
docker run --name=db -d -p 3306:3306 gary29198/inframind-db:latest
docker run --name=app -d -p 8080:8080 gary29198/inframind-app:latest