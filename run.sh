sudo docker kill $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker build -t au:1 .

sudo docker run -it \
    --name aura -d \
    -p 3000:3000 \
    -p 5000:5000 \
    -v $(pwd)/project:/project \
    au:1 bash

sudo docker exec -it aura bash
