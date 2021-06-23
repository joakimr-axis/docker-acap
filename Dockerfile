ARG ACAPARCH=armv7hf
FROM axisecp/acap-sdk:3.2-$ACAPARCH

COPY . /opt/app 
WORKDIR /opt/app

RUN . /opt/axis/acapsdk/environment-setup* && create-package.sh
ENTRYPOINT [ "/opt/axis/acapsdk/sysroots/x86_64-pokysdk-linux/usr/bin/eap-install.sh" ] 
