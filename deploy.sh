sudo apt update
sudo apt install -y nodejs npm

sudo npm install -g pm2

cd ~/CA1DevOpSecSimpleApplication || exit 1

npm install

echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt

pm2 delete SimpleApplication || true
pm2 start ./bin/www --name SimpleApplication --env=production