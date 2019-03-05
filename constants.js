import chalk from 'chalk'

export const ALREADY_INSTALLED = 'already installed'

export const ALREADY_INSTALLED_TEXTS = [
  'already installed',
  'already have Oh My Zsh'
]

export const STAGES = {
  iTerm2: {
    name: 'Iterm 2',
    cmd: 'brew cask install iterm2'
  },
  zsh: {
    name: 'Oh My Zsh',
    cmd: 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
  },
  copyZshConfig: {
    name: '.zshrc config file',
    cmd: 'babel-node copy-zsh.js'
  },
  docker: {
    name: 'docker',
    cmd: 'brew install docker'
  },
  yarn: {
    name: 'yarn',
    cmd: 'npm i -g yarn'
  }
}

export const error = (...msg) => console.log(chalk.bold.red(...msg))
const orangeText = chalk.keyword('orange')
export const warning = (...msg) => console.log(orangeText(...msg))
export const success = (...msg) => console.log(chalk.green(...msg))

export const exitFailure = () => process.exit(1)
export const exitSuccess = () => process.exit(0)
