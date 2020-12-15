# Cypress Docker image.
#
# Uses full 'windows' base image due to Cypress requiring DirectX DLLs.
#
# Example build arguments with explicit versions:
#   docker build --build-arg WIN_VERSION=1809 --build-arg GIT_VERSION=2.25.1 --build-arg NODEJS_VERSION=12.16.1 --build-arg CYPRESS_VERSION=4.2.0 -t cypress .
#
# The versions of nodejs and cypress can be 'latest'.
#
# Example running the image and mapping test code from a local directory:
#   docker run --rm -v c:\dev\my-test-project:c:\cypress --env CYPRESS_BASE_URL=http://app:7071 cypress
# Where 'app' is another container running via 'docker run --name app'

FROM mcr.microsoft.com/windows:20H2-amd64

RUN mkdir -p /c/download ; cp -r ta_assignment /c/download/
# Install NodeJS and Cypress
RUN curl.exe --fail "https://nodejs.org/dist/v12.16.1/node-v12.16.1-win-x64.zip" -o /c/download/nodejs.zip
RUN cd /c/download ; unzip.exe nodejs.zip
RUN cd /c/download/node-v12.16.1-win-x64/ ; ./npm install cypress@4.2.0 --save-dev --global
RUN cd /c/download/ta_assignment/ ; ../npm install

CMD ["cypress.cmd", "run"]
