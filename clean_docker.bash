#!/bin/bash

# clean up our falcon-random containers
falcon_random_containers=`docker ps -a --filter ancestor=falcon-random -q`
for container in $falcon_random_containers
do
  docker rm -f $container
done

# clean up dangling images
dangling_imgages=`docker images --filter "dangling=true" -q`
for image in $dangling_imgages
do
  docker rmi -f $image
done

# clean up falcon-random images
falcon_random_imgages=`docker images falcon-random -q`
for image in $falcon_random_imgages
do
  docker rmi -f $image
done
