FROM docker pull linuxserver/nextcloud
RUN apk update
RUN apk add tesseract-ocr
RUN apk add tesseract-ocr-data-deu
