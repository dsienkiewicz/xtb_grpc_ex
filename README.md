# XtbGrpcEx

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `xtb_grpc_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:xtb_grpc_ex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/xtb_grpc_ex>.

## Generate service stubs

```shell
mix protobuf.generate --output-path=./lib --include-path=./priv/protos --plugin=ProtobufGenerate.Plugins.GRPC ./priv/protos/person_service.proto 
```

## Start iex session & connect from livebook

In one shell:
```shell
iex --name xtb_grpc_ex@127.0.0.1 --cookie livebook -S mix
```

In another one:
```shell
export LIVEBOOK_PORT=8082 && \
	export LIVEBOOK_DEFAULT_RUNTIME="attached:xtb_grpc_ex@127.0.0.1:livebook" && \
	livebook server
```