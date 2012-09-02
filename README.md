public-api
==========

- You can place Apiary blueprint in chunks to ./apiary/ as *.apib files and compile it into single apiary.apib file
- You can create dictionaries into ./apiary/dictionaries as ruby modules, to make your answer and response bodies more DRYer
- DO NOT EDIT ./apiary.apib DIRECTLY!!!  It will be overwritten in next compile!

Usage:
  rake compile
