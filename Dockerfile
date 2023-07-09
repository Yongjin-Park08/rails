FROM ruby:3.2.2-alpine3.18

RUN apk add --update git build-base bash bash-completion libffi-dev tzdata postgresql-client postgresql libpq-dev

WORKDIR /app

COPY Gemfile* /app/

RUN gem install bundler

RUN bundle update

RUN bundle install

RUN bundle binstubs --all

RUN touch $HOME/.bashrc

RUN echo "alias ll='ls -alF'" >> $HOME/.bashrc
RUN echo "alias la='ls -A'" >> $HOME/.bashrc
RUN echo "alias l='ls -CF'" >> $HOME/.bashrc
RUN echo "alias q='exit'" >> $HOME/.bashrc
RUN echo "alias c='clear'" >> $HOME/.bashrc

CMD [ "/bin/bash" ]