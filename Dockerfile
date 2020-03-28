FROM python:3.8.1-alpine

LABEL "maintainer" = "Rodrigo Girão Serrão <rodrigogiraoserrao@gmail.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]