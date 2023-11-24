#!/bin/bash

read -p "Adja meg a felhasználónevet: " username
read -p "Adja meg a verziót: " version
read -p "Adja meg a webhelyet: " site

cat <<EOL > config.yml
username: $username
version: $version
site: $site
EOL

echo "A config.yml fájl elkészült!"
