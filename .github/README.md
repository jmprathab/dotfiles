# dotfiles

Dark matter which pipes me to my own universe

## How to install

```yaml
Universal: 
 sudo curl -fLo /bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && 
 sudo chmod a+x /bin/yadm &&
 yadm clone https://github.com/jmprathab/dotfiles.git

Mac: 
 brew install yadm &&
 yadm clone https://github.com/jmprathab/dotfiles.git

Arch (fresh install):
 pacman -Syu sudo git --noconfirm &&
 sudo curl -fLo /bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && 
 sudo chmod a+x /bin/yadm &&
 yadm clone https://github.com/jmprathab/dotfiles.git

Arch (AUR with yay): 
 yay -Syu yadm-git &&
 yadm clone https://github.com/jmprathab/dotfiles.git

Debian UNSTABLE/Ubuntu 20.04+: 
 sudo apt install yadm &&
 yadm clone https://github.com/jmprathab/dotfiles.git
```

P.S. Just ignore the GPG password prompt (by pressing cancel or control c), as it's for my personal SSH keys

## Updates

This repository is regurlarly being updated. To update to the latest version of my dotfiles, run:
```bash
yadm pull
```

## Errors

### When cloning

If you encounter any error when cloning, run 
```bash
yadm stash
```
Then reclone with 
```
yadm clone -f https://github.com/jmprathab/dotfiles.git
```

### Running bootstrap script

If you encounter any errors when running the bootstrap script, you can always rerun it with 
```bash
./.config/yadm/bootstrap
```
### Others

Please report any issues you have [here](https://github.com/jmprathab/dotfiles/issues)

## Inspirations

* [mathiasbynens](https://github.com/mathiasbynens/dotfiles)
* [soneji](https://github.com/soneji/dotfiles)
* [pendowski](https://github.com/pendowski/dotfiles)
* https://gist.github.com/bentheax/a0307d464b7534593eac
* https://medium.com/@julius.dehner/how-i-manage-my-dotfiles-with-yadm-4cbdb0d35d34

## Todo

- [ ] Export iterm 2 config
- [ ] Update brewfile with necessary programs
