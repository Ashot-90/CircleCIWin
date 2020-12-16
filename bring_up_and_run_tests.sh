export PATH=$PATH:/c/download/node-v12.16.1-win-x64
cd /c/download/
npm run -s start-api &
npm start &
sleep 5
echo "AA : $(ls /usr/bin/google-chrome)"
echo "BB : $(ls /opt/google/chrome/chrome)"
ln -s /usr/bin/google-chrome /opt/google/chrome/chrome
export PATH=$PATH:/opt/google/chrome/
$(npm bin)/cypress run --browser chrome
$(npm bin)/cypress run --browser firefox
