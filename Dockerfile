FROM ruby:3

RUN gem install webrick

WORKDIR /app

COPY test-server.rb test-server.rb

ENTRYPOINT [ "ruby", "test-server.rb" ]