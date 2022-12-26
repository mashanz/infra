FROM ubuntu:22.04
RUN apt update -y && apt upgrade -y
RUN apt install curl git python3-dev -y
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
RUN bash n lts
RUN npm install -g n
RUN npm install -g pnpm
ARG USERNAME=default
ARG USERID=1000
ARG USERGID=1000
RUN useradd -m -u ${USERID} -d /home/${USERNAME}.linux --shell /bin/bash ${USERNAME}
RUN echo "root messagebus 4754 /usr/lib/dbus-1.0/dbus-daemon-launch-helper" > /var/lib/dpkg/statoverride
USER ${USERID}
RUN curl -sSL https://install.python-poetry.org | python3 -
USER root
CMD [ "/usr/bin/bash" ]