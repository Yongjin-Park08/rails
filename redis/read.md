docker build -t redis_image .
docker run --network rails --name redis_app -p 6400:6400 -d redis_image

