FROM openmicroscopy/omero-server:latest
USER root
RUN mkdir /addons
RUN pip install --upgrade pip
RUN pip install Django
RUN pip install ipython
USER omero-server
EXPOSE 8000
ENTRYPOINT /usr/bin/bash