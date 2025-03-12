FROM python:3.12-slim-bookworm
LABEL maintainer="Jim Clausing, jclausing@isc.sans.edu"
LABEL version="DFIR Unfurl v2025.03"
LABEL description="Run unfurl_cli.apy in a docker container"

WORKDIR /data

RUN pip install dfir-unfurl[all]
RUN pip install flask
RUN useradd user

USER user

ENTRYPOINT [ "/usr/local/bin/unfurl" ]
CMD [ "--help" ]
