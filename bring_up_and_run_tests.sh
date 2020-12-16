cd /c/download
export PATH=$PATH:/c/download/node-v12.16.1-win-x64
npm run -s start-api &
npm start &
sleep 5
$(npm bin)/cypress run --browser chrome
$(npm bin)/cypress run --browser firefox
