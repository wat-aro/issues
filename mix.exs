defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app:             :issues,
     escript:         escript_config,
     version:         "0.1.0",
     elixir:          "~> 1.3",
     build_embedded:  Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name:            "Issues",
     source_url:      "https://github.com/wat-aro/issues",
     deps:            deps]
  end

  def application do
    [ applications: [ :logger, :httpoison ] ]
  end

  defp deps do
    [
      httpoison: "~> 0.8",
      poison:    "~> 1.5",
      ex_doc:    "~> 0.11",
      earmark:   ">= 0.0.0"

    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
