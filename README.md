# OpenCode Remote

Run the **real OpenCode server and web UI** in GitHub Codespaces, then access it from a phone or browser.

## Start it

1. Open this repository on GitHub.
2. Select **Code → Codespaces → Create codespace on main**.
3. Wait for the Codespace to finish creating. The devcontainer installs OpenCode and starts its web server on port `4096`.
4. In the Codespace, open the **Ports** tab. Keep port `4096` set to **Private**.
5. Open the forwarded address on your phone or browser. GitHub will require you to authenticate.
6. Open the Codespace terminal and run:
   ```bash
   cat ~/.opencode-remote/server-password
   ```
   In the OpenCode login prompt, use username `opencode` and that password.

## Sign in to a model provider without an API key

Open the Codespace terminal and run `opencode auth login`. Choose **GitHub Copilot**, then complete its device sign-in flow. This uses OAuth, not an API key. Your GitHub account must have Copilot Chat access; Copilot Free has usage limits.

Then refresh the OpenCode web page and select an available model.

## Important limitations

- Codespaces is a cloud development machine, not an always-on hosting service. It stops after inactivity and has a maximum 12-hour lifetime per session.
- Free usage is limited by your GitHub account's included Codespaces quota. Additional usage may be billed if you enable paid usage.
- Keep port `4096` private. Do not change it to public.
- Do not share the server password.
