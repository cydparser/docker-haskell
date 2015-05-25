# docker-haskell

## Synopsis

This Docker image can be used to create minimal Haskell images which only contain binary files and
any required shared libraries. The technique used is a synthesis of
[snoyberg/haskell-scratch](https://github.com/snoyberg/haskell-scratch) and
[jamiemccrindle/dockerception](https://github.com/jamiemccrindle/dockerception).

## Example

See the [example](example/Dockerfile) for a working minimal app. The [build.sh](build.sh#8) script
shows how the app is built.

## Experimental

The image has only been used to build simple Haskell applications, and has not yet been vetted in
production.
