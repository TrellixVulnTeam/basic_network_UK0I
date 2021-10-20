
# Docker part start
  echo "================================================================="
  echo "Displaying all running containers"
  echo "================================================================="
  # Displaying all running containers
  docker ps -a
  echo "================================================================="
  echo "Stopping all running containers"
  echo "================================================================="
  # Stop all the running containers
  docker stop $(docker ps -aq)
  echo "================================================================="
  echo "Removing all stopped containers"
  echo "================================================================="
  # Removing all the stopped containers
  docker rm $(docker ps -aq)
  echo "================================================================="
  echo "Clearing the volume space"
  echo "================================================================="
  # Cleaning up the stopped containers volumes
  echo "y" | docker volume prune
  echo "================================================================="
  echo "All stopped containers and volumes removed"
  docker ps -a
  docker images | grep dev-
  docker rmi -f $(docker images | awk '($1 ~ /dev-peer.*/) {print $3}')
  docker images
# Docker part end
