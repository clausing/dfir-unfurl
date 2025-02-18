FROM python:3.12-slim-bookworm
LABEL maintainer="Jim Clausing, jclausing@isc.sans.edu"
LABEL version="DFIR Unfurl v2025.02"
LABEL description="Run unfurl_cli.apy in a docker container"

WORKDIR /data

RUN pip install dfir-unfurl
RUN cp /usr/local/lib/python3.12/site-packages/unfurl/scripts/unfurl_cli.py /data/
RUN useradd user

USER user

ENTRYPOINT [ "/usr/local/bin/unfurl" ]
CMD [ "--help" ]
