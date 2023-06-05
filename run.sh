
# check if the file doesn't exist
if [ ! -f "wordpress.zip" ]; then
    curl -L -o wordpress.zip https://wordpress.org/latest.zip
fi

# check if wordpress directory doesn't exist
if [ ! -d "wordpress" ]; then
    unzip wordpress.zip -d .
fi

source .env

docker-compose up -d