FROM mcr.microsoft.com/windows:1809

RUN mkdir -p /c/download ; cp -r ta_assignment /c/download/
# Install NodeJS and Cypress
RUN curl.exe --fail "https://nodejs.org/dist/v12.16.1/node-v12.16.1-win-x64.zip" -o /c/download/nodejs.zip
RUN cd /c/download ; unzip.exe nodejs.zip
RUN cd /c/download/node-v12.16.1-win-x64/ ; ./npm install cypress@4.2.0 --save-dev --global
RUN cd /c/download/ta_assignment/ ; ../npm install

CMD ["cypress.cmd", "run"]
