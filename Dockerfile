FROM docker.io/bitnami/odoo:16
RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install vim
RUN pip3 install wheel setuptools
#RUN pip3 install pandas python-jose pyjwt python-dotenv 
