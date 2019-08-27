FROM alegrand/moocrr_debian_snapshot_slim:20171003T094008Z

LABEL maintainer="Arnaud Legrand <arnaud.legrand@imag.fr>"

RUN sed -i s/20171003T094008Z/20171209T114814Z/ /etc/apt/sources.list
RUN apt-get -o Acquire::Check-Valid-Until=false update \
	&& apt-get install -y jupyter-notebook jupyter-nbconvert \
		python3-matplotlib python3-pandas python3-numpy python3-statsmodels

CMD bash
