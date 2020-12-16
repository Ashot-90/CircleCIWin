mkdir -p /c/download
cp -r ta_assignment/* /c/download/
echo "PATH is : $PATH"
echo "CHROME is : $(ls '/c/Program Files (x86)/Google/Chrome/Application/')"
echo "FIREFOX is : $(ls '/c/Program Files (x86)/Mozilla Firefox/')"
echo "FIREFOX is : $(ls '/c/Program Files/Mozilla Firefox/')"
echo "CHROME is : $(ls '/c/Program Files/Google/Chrome/Application/')"
# Install NodeJS
curl "https://nodejs.org/dist/v12.16.1/node-v12.16.1-win-x64.zip" -o /c/download/nodejs.zip
cd /c/download
unzip nodejs.zip
export PATH=$PATH:/c/download/node-v12.16.1-win-x64
npm install
npm audit fix
