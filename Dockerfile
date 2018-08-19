FROM ruby:2.5


ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for /bin/wait-for
RUN chmod a+rx /bin/wait-for

COPY iptest.rb /iptest.rb

CMD [ "/bin/wait-for", "ip:80", "--", "/iptest.rb"]


