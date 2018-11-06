FROM linuxserver/nextcloud
RUN apk update
RUN apk add tesseract-ocr
RUN apk add tesseract-ocr-data-deu
RUN apk add clamav-daemon
RUN apk add clamav
RUN freshclam
