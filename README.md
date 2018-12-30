# Radiator

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

[bootstrap]: script/bootstrap.sh
[setup]: script/setup.sh
[update]: script/update.sh
[server]: script/server.sh
