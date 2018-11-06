FROM linuxserver/nextcloud
RUN apk update
RUN apk add tesseract-ocr
RUN apk add tesseract-ocr-data-deu
RUN apk add clamav-daemon
RUN apk add clamav
RUN freshclam
RUN echo "*/30  *  *  *  * /usr/bin/freshclam --quiet /usr/bin/freshclam --quiet" >> /etc/crontabs/root
