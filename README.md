
## Running Bash on a container
docker exec -it <image_name> /bin/bash

## Database import
docker exec -i mysql mysql -h localhost -pwordpress -u wordpress wordpress < wp.sql
