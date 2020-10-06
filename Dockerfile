FROM ubuntu:18.04

COPY /hello /var/sample/data/

RUN useradd -ms /bin/bash app

RUN mkdir /var/sample/data/file
RUN chown app:app /var/sample/data/file
RUN chown app:app /var/sample/data/hello
RUN mv /var/sample/data/hello /var/sample/data/file/

RUN cat /var/sample/data/file/hello
