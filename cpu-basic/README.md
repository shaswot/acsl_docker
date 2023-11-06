# acsl_basic
Basic docker repo without GPU support


## Build your docker image using
```
docker build -f ./Dockerfile-cpu -t <some_image_name:some_tag> .
```

## Make changes to the `start_docker_container.sh` script file.
> Reference:
```
docker run \
        --rm \                                          # remove the container when it exits
        --dit \                                         # (detached, interactive, tty)
        --name <whimsical_container_name> \
        -p <host_machine_jupyter_lab_port>:8888 \       # port forwarding: <Host>:<Container>
        -p <host_machine_tensorboard_port>:6006 \       # port forwarding: <Host>:<Container>
        --gpus all \                                    # support all gpus (docker > 19.03). remove for machines without gpus
        -v /local_vol:/docker_vol \                     # volume: mapping local folder to container
        -e JUPYTER_TOKEN=<passwd> \                     # Jupyter password: passwd
        <some_image_name:tag>                           # image name
```
## Run your container using the script file
```
chmod +x start_docker_container.sh
./start_docker_container.sh
```

### Image is built on `ubuntu22.04`


> Jupyter Lab is available
>> JupyterLab is initalized with some custom settings such as custom keyboard shortcuts, code folding in notebook etc. as specified in the `jupyter_files/overrides.json` file.
>> `jupyter_files/jupyter-setting.sh` is a script that copies the `overrides.json` to the appropriate location in the container.

> Does not use conda environment or venv

