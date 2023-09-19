# My dotfiles

Every cool kid has their own dotfiles repo. This is mine. 

It is based on zsh (with no package/plugin managers)

It is managed by [ChezMoi](https://www.chezmoi.io/quick-start/). *chez moi* is French for "my home", and aliased to `cm` once you apply the config.

On a new machine, install brew and chezmoi through brew, then run `chezmoi init --apply dustinbarnes`. This is equivalent to `chezmoi init --apply https://github.com/dustinbarnes/dotfiles.git`. 

The prompt is using [powerlevel10k](https://github.com/romkatv/powerlevel10k), see the `dot_p10k.zsh` for how it was configured (via wizard)

You shouldn't just apply my files, but instead use it as a reference to build your own kit. 

## TODO
- Re-create bootstrap script to automatically fetch install brew/chezmoi and apply it.
- Investigate using 'bat' instead of 'cat'
- Investigate directing 'grep' commands to 'rg'
