FROM ghcr.io/sagernet/sing-box:v1.10.3 AS sing-box

FROM python:3.13.1-alpine3.21

RUN apk add git && git clone https://github.com/vernette/plain2srs.git /app/plain2srs

WORKDIR /app/plain2srs

RUN pip install --no-cache-dir -r requirements.txt

COPY --from=sing-box /usr/local/bin/sing-box /bin/sing-box

ENTRYPOINT ["python", "/app/plain2srs/plain2srs.py"]