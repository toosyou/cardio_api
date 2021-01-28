# cardio_api

* To run the api server
`docker run --restart=always --name ca -d -p 8787:8787 --gpus all toosyou/cardio_api:v0`

* To get log:
`docker logs --follow ca`