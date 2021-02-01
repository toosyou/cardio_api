# cardio_api

* To run the api server
    ```
    docker run --restart=always --name ca -d -p 8787:8787 -p 8899:8899 --gpus all toosyou/cardio_api:v0 & docker logs --follow ca
    ```

* To remove the container
    ```
    docker stop ca && docker rm ca
    ```