defmodule VelocyStream.Mixfile do
  use Mix.Project

  def project do
    [
      app: :velocy_stream,
      version: "0.0.1",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      name: "VelocyStream",
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/austinsmorris/velocy_stream",
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:ex_doc, "~> 0.16", only: :dev},
    ]
  end

  defp description do
    """
    An Elixir implementation for VelocyStream.
    """
  end

  defp package do
    [
      files: ["config", "lib", "test", ".gitignore", ".travis.yml", "LICENSE*", "mix.exs", "README*"],
      maintainers: ["Austin S. Morris"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/austinsmorris/velocy_stream"},
    ]
  end
end
