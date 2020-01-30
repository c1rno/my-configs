Just a place where I synchronizing my cfgs ower multiple machines

Good font you may find there https://www.jetbrains.com/lp/mono
Good Iterm2 theme here https://github.com/aseom/dotfiles/blob/master/osx/iterm2/papercolor-light.itermcolors

VIM setup working with 8+ version and neovim

Repo-related things:
- Installation `git clone --recurse-submodules -j8 https://github.com/c1rno/my-configs.git` (or, for old git use `--recursive`)
- Update `git submodule update --remote --merge` || `git submodule update --init`
- Manage (`git submodule deinit <path to plugin>` && `rm -rf <path to plugin>`) || `git rm [--cached] <path to plugin>`
- Manage `git submodule add https://github.com/<plugin name> vimfiles\pack\plugins\start\<plugin name>`
- Dependency for vim https://github.com/universal-ctags/ctags

Just my unrelated notes:
- from [doc](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent): `$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- for docker do not forget enable `build_kit`
- really usefull cmd `docker system prune -a --volumes`
- [tricky docker endpoint](https://github.com/bufferings/docker-access-host/blob/master/docker-entrypoint.sh)
- Do not forget `brew analytics off`

