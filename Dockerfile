FROM swift:4

WORKDIR /package

COPY . ./

RUN swift package resolve
RUN swift package clean

CMD ["swift", "test"]