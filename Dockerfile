FROM axisecp/acap-sdk:3.2-armv7hf

COPY . /opt/app 
WORKDIR /opt/app

RUN . /opt/axis/acapsdk/environment-setup* && create-package.sh