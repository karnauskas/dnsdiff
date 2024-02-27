FROM python:3-slim

RUN pip install \
    blessings \
    dnspython3

COPY dnsdiff .
RUN chmod +x dnsdiff

ENTRYPOINT [ "./dnsdiff" ]

USER nobody
