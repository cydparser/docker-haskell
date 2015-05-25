FROM cydparser/haskell:7.10

ENV APP_NAME=app

RUN mkdir /usr/local/src/$APP_NAME

WORKDIR /usr/local/src/$APP_NAME

RUN cabal update

# Install and cache dependencies in a seperate layer.
COPY app/*.cabal ./
RUN cabal install --dependencies-only -j

# Copy only the files needed to compile and build.
COPY app/[A-Z]* app/Setup.hs ./
COPY app/src ./src/
RUN cabal install -j && \
    strip dist/build/$APP_NAME/$APP_NAME

# Copy any remaining files.
COPY app ./

CMD ./dist/build/$APP_NAME/$APP_NAME
