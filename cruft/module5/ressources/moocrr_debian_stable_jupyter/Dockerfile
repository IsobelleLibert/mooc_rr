FROM debian:stable

LABEL maintainer="Arnaud Legrand <arnaud.legrand@imag.fr>"

RUN apt-get update \
	&& apt-get install -y jupyter-notebook jupyter-nbconvert \
		python3-matplotlib python3-pandas python3-numpy python3-statsmodels
