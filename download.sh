INFRA_VERSION=1.0.1
wget https://github.com/mashanz/infra/archive/refs/tags/${INFRA_VERSION}.tar.gz -O /tmp/infra.tar.gz
tar -xvf /tmp/infra.tar.gz -C /tmp
cd /tmp/infra-${INFRA_VERSION}
bash ./install.sh
