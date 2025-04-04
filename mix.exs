defmodule XtbGrpcEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :xtb_grpc_ex,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grpc, "~> 0.9"},
      {:protobuf_generate, "~> 0.1.0"},
      {:tls_certificate_check, "~> 1.27"}
    ]
  end
end
