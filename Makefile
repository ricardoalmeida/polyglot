go_test:
	@cd go && go test ./...

elixir_test:
	@cd elixir && mix test

ruby_test:
	@cd ruby && rubocop && rake test

deno_test:
	@cd deno && deno test

rust_test:
	@cd rust && cargo test

polyglot: go_test elixir_test ruby_test rust_test deno_test