# START DOCKER CONTAINER
docker run \
	--name <container_name> \
	-dit \
	-p <hhhh>:8888 \
	-p <hhhh>:6006 \
	-v ~/stash:/stash \
	-e JUPYTER_TOKEN=<mytoken> \
	<image_name>
