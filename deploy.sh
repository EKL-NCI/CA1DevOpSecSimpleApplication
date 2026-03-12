sudo apt update
sudo apt install -y nodejs npm

sudo npm install -g pm2

cd ~/CA1DevOpSecSimpleApplication || exit 1

npm install

printf "%s\n" "$PRIVATE_KEY" > privatekey.pem
printf "%s\n" "$SERVER" > server.crt

chmod 600 privatekey.pem server.crt

pm2 delete SimpleApplication || true
pm2 start ./bin/www --name SimpleApplication --env=production