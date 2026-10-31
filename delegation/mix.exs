defmodule GenAgentDelegation.MixProject do
  use Mix.Project

  @version "0.0.12"

  def project do
    [
      app: :gen_agent_delegation,
      version: @version,
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      releases: [delegation_spike: [include_executables_for: [:unix]]],
      deps: deps(),
      description: "Optional local task delegation, profiles and MCP delivery for GenAgent.",
      source_url: "https://github.com/genagent/gen_agent_delegate",
      package: [
        licenses: ["MIT"],
        maintainers: ["Josh Rotenberg"],
        files: ~w(lib priv config mix.exs README.md LICENSE),
        links: %{"GitHub" => "https://github.com/genagent/gen_agent_delegate"}
      ]
    ]
  end

  def application do
    [extra_applications: [:logger, :crypto], mod: {GenAgent.Delegation.Application, []}]
  end

  defp deps do
    [
      {:gen_agent, "~> 0.11.0"},
      {:gen_agent_claude, "~> 0.5.0"},
      {:gen_agent_codex, "~> 0.8.0"},
      {:gen_agent_structured, path: "../structured"},
      {:forcola, "~> 0.6.0"},
      {:snodo, "~> 0.4.1"},
      {:jason, "~> 1.4"}
    ]
  end
end
