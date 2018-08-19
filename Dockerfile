FROM ruby:2.5

COPY iptest.rb /iptest.rb

CMD ["/iptest.rb"]


