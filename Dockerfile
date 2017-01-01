FROM ruby:2.2.6
MAINTAINER Sean Payne

RUN apt-get update && \
    apt-get install -y nodejs build-essential && \
    gem install jekyll jekyll-paginate

VOLUME /data
WORKDIR /data

CMD ["./run.sh"]
