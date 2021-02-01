# cardio_api

* To run the API server
    ```
    docker run --restart=always -d --name ca \
                -p 8787:8787 -p 8899:8899 \
                -p 8990:8990 -p 8890:8890 \
                --gpus all toosyou/cardio_api; 
    docker logs --follow ca
    ```

* To remove the container
    ```
    docker stop ca && docker rm ca
    ```

* For dev
    ```
    docker run --name ca_dev \
                -it --entrypoint="" \
                -p 8787:8787 -p 8899:8899 \
                -p 8990:8990 -p 8890:8890 \
                -v /mnt/nas/homes/toosyou/projects/tmp:/mnt \
                --gpus all toosyou/cardio_api /bin/bash; 
    ```