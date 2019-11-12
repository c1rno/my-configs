Just a place where I can synchronize my cfgs ower multiple machines

Good font you may find there https://github.com/tonsky/FiraCode.
Good Iterm theme here https://github.com/aseom/dotfiles/blob/master/osx/iterm2/papercolor-light.itermcolors
 or, theme for default's mac term you may use [it](./theme/PaperColor-light.terminal).

Requires VIM 8 (now using native plugins)

For docker do not forget enable `build_kit`

Other how to:
- `git clone --recurse-submodules -j8 https://github.com/c1rno/my-configs.git` (or, for old git use `--recursive`)
- `git submodule update --remote --merge` || `git submodule update --init`
- (`git submodule deinit <path to plugin>` && `rm -rf <path to plugin>`) || `git rm [--cached] <path to plugin>`
- `git submodule add https://github.com/<plugin name> vimfiles\pack\plugins\start\<plugin name>`
- from [doc](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent): `$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`


