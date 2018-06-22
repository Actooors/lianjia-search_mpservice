FROM ubuntu
MAINTAINER mzz m@mzz.pub
WORKDIR /lianjia-search_mpservice
RUN mkdir conf
COPY ./lianjia-search_mpservice ljservice
COPY conf/app.json conf

EXPOSE 8911
ENTRYPOINT ["./ljservice"]