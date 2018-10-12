FROM nextcloud:apache
RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu
RUN echo -n "-1" >> /usr/local/etc/php/conf.d/memory-limit.ini
