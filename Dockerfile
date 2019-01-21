FROM linuxserver/nextcloud
RUN apk update
RUN apk add tesseract-ocr
RUN apk add tesseract-ocr-data-deu
RUN apk add php7-pecl-imagick-dev
