Just a place where I can synchronize my cfgs ower multiple machines

Good font you may find there https://github.com/source-foundry/Hack
Good Iterm theme here https://github.com/aseom/dotfiles/blob/master/osx/iterm2/papercolor-light.itermcolors

Requires VIM 8 (now using native plugins)

How to:
- `git clone --recurse-submodules -j8 https://github.com/c1rno/my-configs.git` (or, for old git use `--recursive`)
- `git submodule update --remote --merge` || `git submodule update --init`
- (`git submodule deinit <path to plugin>` && `rm -rf <path to plugin>`) || `git rm [--cached] <path to plugin>`
- `git submodule add https://github.com/<plugin name> vimfiles\pack\plugins\start\<plugin name>`
