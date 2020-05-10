Just a place where I synchronizing my cfgs ower multiple machines

Good font you may be found here https://github.com/ryanoasis/nerd-fonts/releases
 or `brew tap homebrew/cask-fonts && brew cask install font-jetbrainsmono-nerd-font`
For Iterm2 good theme may be found here
 https://github.com/aseom/dotfiles/blob/master/osx/iterm2/papercolor-light.itermcolors

VIM setup working with 8+ version and neovim

Repo-related things:
- Installation `git clone --recurse-submodules -j8 https://github.com/c1rno/my-configs.git`
  (or, for old git use `--recursive`)
- Update `find . -name .git -exec sh -c "echo Updating {} && git --git-dir={} checkout master && git --git-dir={} pull" \;`
- Manage (`git submodule deinit <path to plugin>` && `rm -rf <path to plugin>`) ||
  `git rm [--cached] <path to plugin>`
- Manage `git submodule add https://github.com/<plugin name> vimfiles\pack\plugins\start\<plugin name>`
- Don't forget about LSP for vim completition and navigation
  - `GO111MODULE=on go get golang.org/x/tools/gopls@latest`
  - `pip install 'python-language-server[all]'`
  - `composer require --dev felixfbecker/language-server friendsofphp/php-cs-fixer`

Just my unrelated notes:
- do not forget `brew analytics off`
- for docker do not forget enable `build_kit`
- if you use screen on Mac, install it from brew, default not supported utf8
- from [another-doc](https://medium.com/risan/upgrade-your-ssh-key-to-ed25519-c6e8d60d3c54):
  `ssh-keygen -o -a 100 -t ed25519 -C your_email@example.com` (prefer)
- from [doc](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent):
  `$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- really usefull cmd `docker system prune -a --volumes`
- [tricky docker endpoint](https://github.com/bufferings/docker-access-host/blob/master/docker-entrypoint.sh)

