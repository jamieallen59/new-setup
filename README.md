new-comp-setup
==============

### Download nvm
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash`
Install node e.g.
`nvm install 10.0.0`

### Download homebrew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Add new github ssh key
`ssh-keygen -t rsa -b 4096 -C "jamieallen59@gmail.com"`
`eval "$(ssh-agent -s)"`
Add to ssh config:
```
Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa
 ```
`ssh-add -K ~/.ssh/id_rsa`
`pbcopy < ~/.ssh/id_rsa.pub`
Add the key: https://github.com/settings/keys

### run scripts
`git clone git@github.com:jamieallen59/new-setup.git`

`npm i && npm start`

### apply iTerm styles & auto-suggestion
Save this file: https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors

Then apply it the profile: iTerm → preferences → profiles → colors → load presets

`git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

### sync up atom settings
- go to sync-settings settings page
- enter github Access Token: ee6024da10bfcef95795e4d3dc9e923ea5d33e33
- enter Gist id: 2eb86c6fdf0a3cf213af28e983af117e
- in atom, type `Cmd + shift + p` and then `sync-settings:restore`
- then `Cmd + shift + p` and then `Window: Install shell commands`
