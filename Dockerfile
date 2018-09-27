FROM ruby:2.4.4
MAINTAINER AURA aura.mar.fo.p@gmail.com

RUN apt-get update \
    && apt-get install -y xvfb qt5-default libqt5webkit5-dev \
                          gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs

RUN gem install bundler grpc rails
RUN gem update

EXPOSE 3000

CMD bash
