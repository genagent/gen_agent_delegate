# gen_agent_delegate

Local task delegation for [GenAgent](https://github.com/genagent/gen_agent),
with the structured IO contracts it uses. Both packages are unpublished source
packages; neither is on Hex.

| Package | Directory | What it is |
| --- | --- | --- |
| `gen_agent_structured` | [structured](structured/README.md) | Validated structured requests, responses and profiles |
| `gen_agent_delegation` | [delegation](delegation/README.md) | Delegate manager, MCP tools and local plugin export |

Both depend on published `gen_agent`, `gen_agent_claude` and `gen_agent_codex`.
`gen_agent_delegation` depends on `../structured` by path.

These packages moved here from `extensions/delegation` and
`integrations/structured` in the gen_agent repository
(genagent/gen_agent#542), with the history of those paths.

## Checks

```sh
scripts/quality.sh              # both packages
scripts/quality.sh delegation   # one package
```

Each package runs locked dependency checks, `hex.audit`, compile with warnings
as errors, format check and tests. Structured also runs
`examples/check_profiles.exs`; delegation also builds a plugin export with
`MIX_ENV=prod mix gen_agent.plugin.build`.
