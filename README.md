new-comp-setup
==============

### Download node
https://nodejs.org/en/download/

### Download homebrew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### run scripts
`git clone blah blah`
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
