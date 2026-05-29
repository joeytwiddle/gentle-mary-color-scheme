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

Not yet published in a standalone form — feel free to bug me.

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

Additionally (for environments where I can/must specify them):

- Occurrences of the word/entity under the cursor are highlighted with a green background (but not in VSCode because we cannot change the foreground colour)
- Search results are highlighted with a blue background
