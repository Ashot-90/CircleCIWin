cd /c/download/ta_assignment/
../npm run -s start-api &
../npm start &
sleep 5
$(npm bin)/cypress run --browser chrome
$(npm bin)/cypress run --browser firefox
