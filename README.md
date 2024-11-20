It looks like this in WebStorm:

<img width="600" src="https://user-images.githubusercontent.com/911799/61277448-c326e900-a7e4-11e9-9a92-5d953413bde2.png">

VSCode version [is here](https://github.com/joeytwiddle/rc_files/tree/master/.vscode/extensions/joeytwiddle.gentle-mary-0.0.1).

I do have a port for Vim too, but I have not yet published it. Feel free to harass me.

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
