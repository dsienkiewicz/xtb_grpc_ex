defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.GetPersonRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.GetPersonResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :person_info, 1, type: Pl.Xtb.Ipax.Pub.Grpc.Person.V1.PersonInfo, json_name: "personInfo"
  field :accounts, 2, repeated: true, type: Pl.Xtb.Ipax.Pub.Grpc.Person.V1.AccountInfo
end

defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.PersonInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :email, 2, type: :string
  field :country_code, 3, type: :string, json_name: "countryCode"
end

defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.AccountInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_id, 1, type: :int64, json_name: "accountId"
  field :account_name, 2, type: :string, json_name: "accountName"
  field :currency, 3, type: :string
end

defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.PersonService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "pl.xtb.ipax.pub.grpc.person.v1.PersonService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetPerson,
      Pl.Xtb.Ipax.Pub.Grpc.Person.V1.GetPersonRequest,
      Pl.Xtb.Ipax.Pub.Grpc.Person.V1.GetPersonResponse
end

defmodule Pl.Xtb.Ipax.Pub.Grpc.Person.V1.PersonService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Pl.Xtb.Ipax.Pub.Grpc.Person.V1.PersonService.Service
end
