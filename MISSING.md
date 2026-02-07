# Missing from Dotfiles

Analysis of tools and apps used but not in install.sh.

## CLI Tools (from zsh history)

### Missing Brew Packages

| Package | Uses | Purpose | Install |
|---------|------|---------|---------|
| `coreutils` | config | GNU utils - gdate for stopwatch.zsh | `brew install coreutils` |
| `fd` | config | Fast file finder (in CLAUDE.md) | `brew install fd` |
| `vercel` | 19 | Vercel CLI | `npm i -g vercel` |
| `docker` | 4 | Containers | `brew install --cask docker` |
| `expo` | 3 | React Native | `npm i -g expo-cli` |
| `pyenv` | 2 | Python version manager | `brew install pyenv pyenv-virtualenv` |
| `psql` | 2 | PostgreSQL | `brew install postgresql@14` |
| `ollama` | 2 | Local LLMs | `brew install ollama` |
| `nmap` | 2 | Network scanner | `brew install nmap` |
| `maestro` | 2 | Mobile UI testing | `brew tap mobile-dev-inc/tap && brew install maestro` |
| `repomix` | 1 | Repo context for LLMs | `npm i -g repomix` |
| `gemini` | 1 | Gemini CLI | `npm i -g @google/gemini-cli` |
| `displayplacer` | 1 | Monitor arrangement | `brew install displayplacer` |
| `dotnet` | 1 | .NET SDK | `brew install dotnet@6` |

### Missing NPM Packages

| Package | Purpose |
|---------|---------|
| `vercel` | Vercel CLI |
| `firebase-tools` | Firebase CLI |
| `@google/gemini-cli` | Gemini AI CLI |
| `repomix` | Repo context for LLMs |
| `newman` | Postman CLI |

## Config Files (on Mac but not in repo)

| File | Location | Purpose |
|------|----------|---------|
| `.zshrc` | `~/.zshrc` | Main zsh config |
| `.zprofile` | `~/.zprofile` | Login shell config |
| `.bash_profile` | `~/.bash_profile` | Bash config |
| `git_bubble.zsh` | `~/.oh-my-zsh/custom/` | Git helpers |
| `stopwatch.zsh` | `~/.oh-my-zsh/custom/` | Terminal stopwatch |
| `unity.zsh` | `~/.oh-my-zsh/custom/` | Unity .meta helpers |
| `karabiner.json` | `~/.config/karabiner/` | Keyboard remapping |
| `.gitconfig` | `~/.gitconfig` | Git settings |

## Apps (from ulogme window logs, 2021-present)

### Top Apps by Screen Time

| App | Window Events | Status |
|-----|---------------|--------|
| Google Chrome | 1,640,318 | ✅ |
| JetBrains Rider | 196,068 | ✅ (toolbox) |
| Slack | 194,338 | ✅ |
| Unity | 105,900 | ✅ |
| Finder | 81,509 | built-in |
| WebStorm | 76,712 | ✅ (toolbox) |
| Obsidian | 75,995 | ✅ |
| Terminal | 22,441 | built-in |
| PyCharm | 16,840 | ✅ (toolbox) |
| Zoom | 10,729 | ✅ |
| WhatsApp | 10,629 | ✅ |
| iTerm2 | 9,567 | ✅ |
| VLC | 9,425 | ✅ |
| IINA | 6,202 | ❌ |
| DataGrip | 5,697 | ✅ (toolbox) |

### Missing Casks (by usage)

| App | Events | Install |
|-----|--------|---------|
| IINA | 6,202 | `brew install --cask iina` |
| qBittorrent | 2,469 | `brew install --cask qbittorrent` |
| Android Studio | 2,340 | `brew install --cask android-studio` |
| Discord | 1,047 | `brew install --cask discord` |
| Cursor | 552 | `brew install --cask cursor` |
| Spotify | 433 | `brew install --cask spotify` |
| Arc | 249 | `brew install --cask arc` |
| Zotero | 211 | `brew install --cask zotero` |
| OBS Studio | 207 | `brew install --cask obs` |
| Docker Desktop | 84 | `brew install --cask docker` |
| Wireshark | 82 | `brew install --cask wireshark` |
| GIMP | 69 | `brew install --cask gimp` |
| Figma | 47 | `brew install --cask figma` |
| Fork | 36 | `brew install --cask fork` |
| Logseq | 36 | `brew install --cask logseq` |

## Quick Install Commands

```bash
# High priority brew packages
brew install coreutils fd pyenv pyenv-virtualenv
brew install postgresql@14 ollama nmap displayplacer dotnet@6
brew tap mobile-dev-inc/tap && brew install maestro

# High priority casks
brew install --cask iina qbittorrent android-studio discord
brew install --cask cursor spotify arc docker obs

# NPM packages
npm i -g vercel firebase-tools @google/gemini-cli repomix newman
```
