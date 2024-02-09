FROM python:3.10

WORKDIR /data

RUN pip install dfir-unfurl
RUN useradd user

USER user

ENTRYPOINT [ "unfurl_cli.py" ]
CMD [ "--help" ]
