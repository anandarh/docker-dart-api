FROM google/dart

WORKDIR /app
ADD pubspec.* /app/
RUN pub get --no-precompile
ADD . /app/
RUN pub get --offline --no-precompile

WORKDIR /app
EXPOSE 8888

ENTRYPOINT ["pub", "run", "aqueduct:aqueduct", "serve", "--port", "8888"]