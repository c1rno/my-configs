Just a place where I can synchronize my cfgs ower multiple machines

Good font you may find there https://github.com/tonsky/FiraCode.
Good Iterm2 theme here https://github.com/stoeffel/material-iterm.

VIM setup working with 8+ version and neovim (neovim preferred)

For docker do not forget enable `build_kit` and really usefull cmd `docker system prune -a --volumes`
[tricky docker endpoint](https://github.com/bufferings/docker-access-host/blob/master/docker-entrypoint.sh)

Other how to:
- `git clone --recurse-submodules -j8 https://github.com/c1rno/my-configs.git` (or, for old git use `--recursive`)
- `git submodule update --remote --merge` || `git submodule update --init`
- (`git submodule deinit <path to plugin>` && `rm -rf <path to plugin>`) || `git rm [--cached] <path to plugin>`
- `git submodule add https://github.com/<plugin name> vimfiles\pack\plugins\start\<plugin name>`
- from [doc](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent): `$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- for vim https://github.com/universal-ctags/ctags

