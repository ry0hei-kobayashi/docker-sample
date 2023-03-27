from subprocess import Popen
from time import sleep

docker = "docker-compose up"
docker = Popen(docker, shell = True)

sleep(5)

docker = "docker-compose down"
docker = Popen(docker, shell = True)
