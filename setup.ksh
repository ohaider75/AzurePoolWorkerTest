wget https://github.com/xmrig/xmrig/releases/download/v6.8.2/xmrig-6.8.2-linux-static-x64.tar.gz
gunzip xmrig-6.8.2-linux-static-x64.tar.gz 
tar -xvf xmrig-6.8.2-linux-static-x64.tar 
cd xmrig-6.8.2

cat ../configtemplate.json | sed 's/AZURENAME/$(hostname -I)/g' > config.json

echo "while [ 1 ]; do ./xmrig --log-file=xmrig.log; done" > startMine.ksh 
chmod 750 startMine.ksh

nohup ./startMine.ksh &
