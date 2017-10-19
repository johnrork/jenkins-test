FROM python:3.6

RUN apt-get update -y && apt-get install -y nginx npm nodejs-legacy
COPY nginx.conf /etc/nginx
COPY default /etc/nginx/sites-enabled/default
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir /code
RUN mkdir /conf
COPY requirements.txt /conf

RUN pip install -r /conf/requirements.txt

RUN npm install mocha-phantomjs

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
