FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.1

RUN gem install adamwiggins-rest-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["restclient"]
CMD ["--help"]
