FROM abatool1/httpd
RUN yum -y update && yum clean all && \
rpm -Uvh --replacepkgs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&\
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm &&\
yum install -y php56w php56w-opcache php56w-mysql php56w-iconv php56w-mbstring php56w-curl php56w-openssl php56w-tokenizer php56w-soap php56w-ctype php56w-zip php56w-gd php56w-simplexml php56w-spl php56w-pcre php56w-dom php56w-xml php56w-intl php56w-json php56w-ldap php56w-pecl-apcu php56w-odbc php56w-pear php56w-xmlrpc php56w-snmp php56w-pdo curl &&\
yum install -y ghostscript && \
yum clean all && rm -rf /tmp/yum*


