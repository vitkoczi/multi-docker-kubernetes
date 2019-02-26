FROM ruby:2.3
WORKDIR "/tmp"
#RUN gem install travis --no-rdoc --do-ri
RUN gem install travis
COPY ./ ./
RUN travis login --github-token c8d91b5277d57edcbbe1e36906b615ed2968be65 
RUN ["travis", "encrypt-file", "service-account.json", "-r", "vitkoczi/multi-docker-kubernetes"]
CMD ["sh"]
