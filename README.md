# OpenCode Remote

Run OpenCode from GitHub Issues and pull-request comments using GitHub Actions.

## Usage

1. Install the [OpenCode GitHub App](https://github.com/apps/opencode-agent) on this repository.
2. Add an Actions repository secret named `ANTHROPIC_API_KEY` with an API key from your Anthropic account.
3. Open an issue or pull request and comment with `/oc <task>` or `/opencode <task>`.

Examples:

- `/oc explain the project structure`
- `/opencode investigate this bug and propose a fix`

The workflow is restricted to comments authored by the repository owner. It runs on a temporary GitHub-hosted runner; it is not a persistent server.

## Security

- Never commit API keys or other credentials.
- The workflow checks out the repository with persisted Git credentials disabled.
- Review generated changes before merging.
- Keep this repository private if its source or issue context should not be public.
