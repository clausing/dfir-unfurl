FROM python:3.10.13-slim-bookworm
LABEL maintainer "Jim Clausing, jclausing@isc.sans.edu"
LABEL version="DFIR Unfurl v0.1"
LABEL description="Run unfurl_cli.apy in a docker container"

WORKDIR /data

RUN pip install dfir-unfurl
RUN useradd user

USER user

ENTRYPOINT [ "unfurl_cli.py" ]
CMD [ "--help" ]
