{"filter":false,"title":"upload_docker.sh","tooltip":"/upload_docker.sh","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":17,"column":66},"end":{"row":17,"column":76},"action":"remove","lines":["project-ml"],"id":11},{"start":{"row":17,"column":66},"end":{"row":17,"column":76},"action":"insert","lines":["project-ml"]}],[{"start":{"row":0,"column":0},"end":{"row":67,"column":54},"action":"remove","lines":["#!/usr/bin/env bash","# This file tags and uploads an image to Docker Hub","","# Assumes that an image is built via `run_docker.sh`","","# Step 1:","# Create docker_path (username)","docker_path=longnt2","","","# Step 2:  ","# Login in docker hub with user name and password its store before","docker login","","# Check if the image is already tagged and remove it if necessary","","# Check if the image with the specified reference is already tagged","image_tagged=$(docker image list --filter=reference=\"$docker_path/project-ml\" | grep 'project-ml')","","if [ [  -n $image_tagged  ] ] ; then","","","","  echo \"Image already tagged, remove the tagged image.\"","","  # Extract the image name from the tagged image information","  name=$(echo \"$image_tagged\")","  ","  # Cut strung in name when get from image_tagged","  name=$(echo \"$name\" | cut -f 1 -d \" \")","","  # Extract the image tag from the tagged image information","  tag=$(echo \"$image_tagged\")","  ","  ","  # Cut String for tag from image_tagged to create a new tag","  tag=$(echo \"$tag\" | cut -f 2 -d \" \")","","  # Remove the tagged image forcefully","  docker image remove --force \"$name\":\"$tag\"","  ","  ","fi","","","# Get information about the image by filters the lines containing \"project-ml, only the lines representing Docker images with \"project-ml\" in their names.","image_info=$(docker image list | grep 'project-ml')","","","# Extracts the image name from the image_info variable from above processing. ","image_name=$(echo \"$image_info\")","","#Substring for image name from image_info","image_name=$(echo \"$image_name\" | cut -f 1 -d \" \")","","# Extracts the image tag from the image_info variable from above processing.","image_tag=$(echo \"$image_info\")","","","#Substring for image tag from image_info","image_tag=$(echo \"$image_tag\" | cut -f 2 -d \" \")","","# Create tag and taged for images before it push to doicker hub","docker image tag \"$image_name:$image_tag\" \"$docker_path/$image_name:$image_tag\"","","# Step 3:","# Push image to a docker repository","docker image push \"$docker_path/project-ml:$image_tag\""],"id":12},{"start":{"row":0,"column":0},"end":{"row":43,"column":54},"action":"insert","lines":["!/usr/bin/env bash","# This file tags and uploads an image to Docker Hub","","# Assumes that an image is built via `run_docker.sh`","","# Step 1:","# Create docker_path (username)","docker_path=vuvm1","","","# Step 2:  ","# Authenticate & tag","# echo \"Docker ID and Image: $docker_path\"","docker login","","# Check if the image is already tagged and remove it if necessary","image_tagged=$(docker image list --filter=reference=\"$docker_path/project-ml\" | grep 'project-ml' | xargs)","if [[ -n $image_tagged ]]; then","  echo \"Image already tagged, remove the tagged image.\"","  # Extract the image name from the tagged image information","  name=$(echo \"$image_tagged\" | cut -f 1 -d \" \")","  # Extract the image tag from the tagged image information","  tag=$(echo \"$image_tagged\" | cut -f 2 -d \" \")","  # Remove the tagged image forcefully","  docker image remove --force \"$name\":\"$tag\"","fi","","# Get information about the image by substring ","image_info=$(docker image list | grep 'project-ml' | xargs)","# Extract the image name from the image information","image_name=$(echo \"$image_info\" | cut -f 1 -d \" \")","# Extract the image tag from the image information","image_tag=$(echo \"$image_info\" | cut -f 2 -d \" \")","","# Tag the image with the specified repository and tag","docker image tag \"$image_name:$image_tag\" \"$docker_path/$image_name:$image_tag\"","","# List the tagged image","docker image list --filter=reference=\"$docker_path/project-ml\"","","# Step 3:","# Push image to a docker repository","# Push the tagged image to the Docker repository","docker image push \"$docker_path/project-ml:$image_tag\""]}],[{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"remove","lines":["1"],"id":13},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"remove","lines":["m"]},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["v"]},{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["u"]},{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"remove","lines":["v"]}],[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":["l"],"id":14},{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["o"]},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["n"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["g"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["n"]},{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["t"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["2"]}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":2},"action":"insert","lines":["# "],"id":15}],[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["s"],"id":16}],[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"remove","lines":["s"],"id":17}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":29,"column":51},"end":{"row":29,"column":51},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1691048192571,"hash":"eb7141e629a024f0c72161ef1d50f2347fada0c9"}