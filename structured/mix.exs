defmodule GenAgentStructured.MixProject do
  use Mix.Project

  def project do
    [app: :gen_agent_structured, version: "0.0.0", elixir: "~> 1.19", deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :crypto], mod: {GenAgent.Structured.Application, []}]
  end

  defp deps do
    [
      {:gen_agent, "~> 0.11.0"},
      {:jason, "~> 1.4"},
      {:ex_json_schema, "~> 0.11.5"},
      {:gen_agent_claude, "~> 0.5.0", optional: true},
      {:gen_agent_codex, "~> 0.8.0", optional: true}
    ]
  end
end
