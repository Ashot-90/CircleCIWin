mkdir -p /c/download
cp -r ta_assignment/* /c/download/
# Install NodeJS
curl "https://nodejs.org/dist/v12.16.1/node-v12.16.1-win-x64.zip" -o /c/download/nodejs.zip
cd /c/download
unzip nodejs.zip
export PATH=$PATH:/c/download/node-v12.16.1-win-x64
npm install
npm audit fix
