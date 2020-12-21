defmodule GithubIssues.MixProject do
  use Mix.Project

  def project do
    [
      app: :github_issues,
      version: "0.1.0",
      name: "GithubIssues",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      escript: escript_config(),
      source_url: "https://github.com/henriqueaf/github_issues",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison, :jsx]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      { :httpoison, "~> 1.7" },
      { :jsx, "~> 3.0" },
      { :ex_doc, "~> 0.23", only: :dev, runtime: false}
    ]
  end

  defp escript_config do
    [ main_module: GithubIssues.CLI ]
  end
end
