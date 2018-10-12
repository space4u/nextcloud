FROM nextcloud:apache
RUN apt-get update
RUN apt-get install -y tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu
RUN echo -n "-1" >> /usr/local/etc/php/conf.d/memory-limit.ini
RUN sudo -u www-data php occ app:install fulltextsearch
RUN sudo -u www-data php occ app:install bookmarks_fulltextsearch
RUN sudo -u www-data php occ app:install fulltextsearch_elasticsearch
RUN sudo -u www-data php occ app:install files_fulltextsearch
RUN sudo -u www-data php occ app:install files_fulltextsearch_tesseract
