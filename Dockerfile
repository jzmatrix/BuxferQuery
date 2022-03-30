FROM debian:11
################################################################################
RUN apt update && \
    apt -y install libyaml-tiny-perl liblwp-protocol-https-perl libjson-perl libdbd-mysql-perl libdbi-perl
################################################################################
ADD getAccountData /opt/getAccountData
RUN chmod 755 /opt/getAccountData
################################################################################
CMD ["/opt/getAccountData"]