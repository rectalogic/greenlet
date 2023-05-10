FROM python:3.10-slim AS app
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    build-essential gdb
RUN pip install uwsgi boolean-parser
WORKDIR /greenlet
CMD ["/greenlet/repro/entrypoint.sh"]
