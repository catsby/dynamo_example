defmodule DynamoExample.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynamo_example,
      version: "0.0.1",
      dynamos: [DynamoExample.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/dynamo_example/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { DynamoExample, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" } ]
  end
end
