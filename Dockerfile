FROM python:3.10.13-slim-bookworm
LABEL maintainer="Jim Clausing, jclausing@isc.sans.edu"
LABEL version="DFIR Unfurl v2024.06"
LABEL description="Run unfurl_cli.apy in a docker container"

WORKDIR /data

RUN pip install dfir-unfurl
RUN cp /usr/local/lib/python3.10/site-packages/unfurl/scripts/unfurl_cli.py /data/
RUN useradd user

USER user

ENTRYPOINT [ "/usr/local/bin/python", "./unfurl_cli.py" ]
CMD [ "--help" ]
