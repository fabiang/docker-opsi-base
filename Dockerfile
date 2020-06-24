FROM debian

ARG OPSI_LIB_VERSION=4.1.1.86-2

RUN apt-get update \
    && apt-get install -y \
        git g++ libffi-dev libssl-dev swig python2-dev \
        python-twisted-web python-magic python-crypto python-ldap python-newt \
        python-pam python-openssl python-mysqldb python-sqlalchemy duplicity \
        python-m2crypto lshw python-ldaptor iproute2 python-pip librsync-dev \
    && pip install git+https://github.com/opsi-org/python-opsi@$OPSI_LIB_VERSION \
    && apt-get remove -y \
        git g++ libffi-dev libssl-dev python2-dev librsync-dev
