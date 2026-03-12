sudo apt update
sudo apt install nodejs npm

sudo npm install -g pm2

cd ~/CA1DevOpSecSimpleApplication

npm install

pm2 delete SimpleApplication || true
pm2 start ./bin/www --name SimpleApplication 