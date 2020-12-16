cd /c/download
export PATH=$PATH:/c/download/node-v12.16.1-win-x64
export PATH=$PATH:/c/Program Files (x86)/Google/Chrome/Application/
export PATH=$PATH:/c/Program Files/Google/Chrome/Application/
export PATH=$PATH:/c/Program Files (x86)/Mozilla Firefox/
export PATH=$PATH:/c/Program Files/Mozilla Firefox/
npm run -s start-api &
npm start &
sleep 5
$(npm bin)/cypress run --browser chrome
$(npm bin)/cypress run --browser firefox
