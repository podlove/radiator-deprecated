# Radiator

[![Build Status](https://travis-ci.org/podlove/radiator.svg?branch=master)](https://travis-ci.org/podlove/radiator)

To start your Phoenix server:

  * Run setup script [`script/setup.sh`][setup]
  * Start Phoenix endpoint with `script/server.sh`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Scripts

Binaries in the `scripts` directory follow https://github.com/github/scripts-to-rule-them-all

- [`script/bootstrap.sh`][bootstrap] fulfills dependencies of the project
- [`script/setup.sh`][setup] sets up project to initial state, should be used right after cloning
- [`script/update.sh`][update] is used to update the project after a fresh pull
- [`script/server.sh`][server] is used to start the application

NOTE: Not sure I like that starting the server goes through all the bootstrapping/updating as well. Sure it's "safe" but it's also slow.

## Running Tests

```
mix test
```

## Core Design

Radiator Core contains business logic exposed via REST/[HAL](http://stateless.co/hal_specification.html) API

## Phoenix Contexts

I am still unsure how to handle Contexts. It works to just throw the whole app in a single context but we will likely become too complex for this approach. We can likely fragment too much with too many contexts as well--but that's only an assumption. Maybe splitting up a lot is great.

- **Podcasts:** Show, Episode
- **Account:** User
- **Media:** Anything to do with files and downloads/delivery like File, FileType
- **CMS:** Author, Capability/Permission
- **Transcripts:** TranscriptLine
- **Chapters:** ChapterMark

It might be useful to separate _User_ from _Author_ (the user entity that's managing content). In the Account/User Context, handle only registration/login flow. The Author handles CMS stuff like permissions/capabilities.

[bootstrap]: script/bootstrap.sh
[setup]: script/setup.sh
[update]: script/update.sh
[server]: script/server.sh
