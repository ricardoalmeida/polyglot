# Polyglot

Algorithms in A, B and C just for fun! _へ__(‾◡◝ )>

## Algorithm solutions in different languages

Currently supporting Go, Elixir, TypeScript (using Deno), Rust and Ruby

Method/function names are based on type of solution:

- iterate ('for' loops)
- recursive (Recursion)
- pattern_match (Recursion using pattern match)
- std (standard api)

## Install (macOS)

```sh
brew update && brew install elixir deno go ruby-build
```

Rust:

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
```

## Running all tests

`make -j polyglot`

### Running specific tests

#### Golang

`go test ./... -v`

#### Ruby

`bundle exec rake test TESTOPTS='-v'`

#### Elixir

`mix test`

#### Deno & TypeScript

`deno test`

#### Rust

`cargo test`

## Talk to Polyglot

Try this:

```sh
cd elixir
iex -S mix
iex(1)> Polyglot.hello_favorite_language()
```
