FROM osgeo/gdal:ubuntu-small-latest-amd64

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y libspatialindex-dev unar bc python3-pip wget libgdal-dev python3-gdal python3

ADD ./requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir /code
ADD . /code/

WORKDIR /code
VOLUME [ "/code/data" ]
CMD python3 server.py

EXPOSE 8080

EXPOSE 8443
