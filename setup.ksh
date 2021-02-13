wget https://github.com/xmrig/xmrig/releases/download/v6.8.2/xmrig-6.8.2-linux-static-x64.tar.gz
gunzip xmrig-6.8.2-linux-static-x64.tar.gz 
tar -xvf xmrig-6.8.2-linux-static-x64.tar cd xmrig-6.8.2/
cd xmrig-6.8.2

echo '{"autosave":true,"cpu":true,"opencl":false,"cuda":false,"pools":[{"url":"sg.minexmr.com:443","user":"45ws8ZQHAd6aQXFSWzVrfbAJ5rNeFV9c8Eo2iXKA2kbG5Sx2wpxoQGZKsZdTRT8f9RU9kNVPTxapCEDuPt19H3AA4JVCxTU","keepalive":true,"tls":true}]}' > config.json

echo "while [ 1 ]; do ./xmrig --log-file=xmrig.log; done" > startMine.ksh 
chmod 750 startMine.ksh

nohup ./startMine.ksh &
