INFRA_VERSION=stable
wget https://github.com/mashanz/infra/archive/refs/branchs/${INFRA_VERSION}.tar.gz -O /tmp/infra.tar.gz
tar -xf /tmp/infra.tar.gz -C /tmp/infra
cd /tmp/infra-${INFRA_VERSION}
bash ./install.sh
