A gentle colour scheme that won't burn your eyes, using near-primary colours.

Keywords are red, strings are yellow, functions are green, properties are blue, types are purple.

It looks like this in WebStorm:

<img width="600" src="https://user-images.githubusercontent.com/911799/61277448-c326e900-a7e4-11e9-9a92-5d953413bde2.png">

## Installation

### WebStorm

1. Open **Settings → Editor → Color Scheme**.
2. Click the gear icon → **Import Scheme**.
3. Select `webstorm/GentleMary.icls` from this repo.

### VSCode

The extension lives in [rc_files](https://github.com/joeytwiddle/rc_files/tree/master/.vscode/extensions/joeytwiddle.gentle-mary-0.0.1).

```sh
git clone https://github.com/joeytwiddle/rc_files.git
ln -s "$PWD/rc_files/.vscode/extensions/joeytwiddle.gentle-mary-0.0.1" \
      ~/.vscode/extensions/joeytwiddle.gentle-mary-0.0.1
```

Then select **Gentle Mary** via **Preferences → Color Theme**.

### Vim

```sh
mkdir -p ~/.vim/colors
ln -s "$PWD/vim/colors/gentlemary.vim" ~/.vim/colors/gentlemary.vim
```

Then add `colorscheme gentlemary` to your `~/.vimrc` (or run `:colorscheme gentlemary`).

### TextMate (.tmTheme)

The shared source of truth lives at `textmate/GentleMary.tmTheme`. It uses
the standard TextMate theme format, which is shared by many tools (bat,
Codex CLI, Sublime Text, Lite-XL, BBEdit, …).

The `bat/` and `codex/` subdirectories each contain a symlink that points at
`textmate/GentleMary.tmTheme`. They exist so each tool can later host its own
location-specific README (or its own fork of the file) without disturbing the
others — the symlinks can be replaced with real files at any time.

### bat

```sh
mkdir -p "$(bat --config-dir)/themes"
ln -s "$PWD/bat/GentleMary.tmTheme" "$(bat --config-dir)/themes/GentleMary.tmTheme"
bat cache --build
```

Then either pass `--theme="GentleMary"` per invocation, or add it to your bat config:

```sh
echo '--theme="GentleMary"' >> "$(bat --config-dir)/config"
```

### Codex CLI

```sh
mkdir -p ~/.codex/themes
ln -s "$PWD/codex/GentleMary.tmTheme" ~/.codex/themes/GentleMary.tmTheme
```

Then pick it from the in-app `/theme` picker (live preview; selection is
written to `[tui] theme` in `~/.codex/config.toml`), or set it directly:

```toml
# ~/.codex/config.toml
[tui]
theme = "gentlemary"
```

(Codex derives the theme name from the filename minus `.tmTheme`, kebab-cased.)

### OpenCode

```sh
mkdir -p ~/.config/opencode/themes
ln -s "$PWD/opencode/themes/gentlemary.json" ~/.config/opencode/themes/gentlemary.json
```

Then pick it with the `/theme` command, or set `"theme": "gentlemary"` in your `opencode.json`. Requires a truecolor terminal (`COLORTERM=truecolor`).

The OpenCode and omp ports paint by broad category (keyword, string, type, …) rather than per-scope, so they are coarser than the bat/VSCode/WebStorm ports.

### omp

```sh
mkdir -p ~/.omp/agent/themes
ln -s "$PWD/omp/themes/gentlemary.json" ~/.omp/agent/themes/gentlemary.json
```

Then select **gentlemary** via `/settings` → **Appearance → Dark Theme**. This uses the OpenCode port's dark palette, with a gunmetal-grey background for submitted prompts; omp leaves your terminal's background unchanged.

For grey prompt borders, yellow session names and purple model names, turn off **Session Accent** in `/settings` → **Appearance → Status Line**, or run:

```sh
omp config set statusLine.sessionAccent false
```

----

The general idea:

- Use primary colours (not unusual colours like Monokai!) but soften them a bit. Hence "gentle primary" = gentle-mary.
- Yes, it's boring, but it's gentle on the eye.
- Keywords/statements are red
- Functions and methods are green
- Properties are blue
- Strings are yellow
- Special things like types and classes are purple
- The rest (e.g. variable names and punctuation) are muted white (light grey)
- Global variables / constants / static members may be bright white
- Some values like numbers and booleans are cyan
- Semicolons and comments are deemphasised (light and dark grey respectively)

Sometimes I also include some highlighting colours:

- Occurrences of the word/entity under the cursor are highlighted with a green background (but not in VSCode because we cannot change the foreground colour)
- Search results are highlighted with a blue background
