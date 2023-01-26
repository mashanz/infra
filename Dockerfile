FROM ubuntu:22.04
RUN apt update -y
# RUN apt upgrade -y
RUN apt install curl -y
RUN apt install git -y
RUN apt install nano -y
RUN apt install python3-dev -y
ARG USERNAME=default
ARG USERID=1000
ARG USERGID=1000
RUN useradd -m -u ${USERID} -d /home/${USERNAME}.linux --shell /bin/bash ${USERNAME}
RUN mkdir -p /usr/local/n
RUN chown -R ${USERNAME} /usr/local/n
RUN mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
RUN chown -R ${USERNAME} /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
USER ${USERID}
WORKDIR /home/${USERNAME}.linux
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
RUN bash n lts
RUN npm install -g n
RUN npm install -g pnpm
USER root
CMD [ "/usr/bin/bash" ]