FROM node:20

RUN npm i -g webtorrent-webui

EXPOSE 3000 7000 42069/udp 5489

CMD webtorrent-webui -p 3000 -t /data/tmp/ -d/data/downloaded/ -l 0.0.0.0 -a 42069 -o 5489
