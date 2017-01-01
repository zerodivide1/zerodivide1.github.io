FROM debian:jessie
MAINTAINER Sean Payne

RUN apt-get update && \
    apt-get install -y ruby ruby-dev rubygems nodejs build-essential && \
    gem install jekyll jekyll-paginate

VOLUME /data
WORKDIR /data

CMD ["jekyll","serve","--baseurl=''"]
