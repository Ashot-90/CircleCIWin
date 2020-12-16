export PATH=$PATH:/c/download/node-v12.16.1-win-x64
cd /c/download/
npm run -s start-api &
npm start &
sleep 5
$(npm bin)/cypress run --browser chrome
$(npm bin)/cypress run --browser firefox
