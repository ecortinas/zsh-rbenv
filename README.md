## Usage
This plugin is based on the [zsh-pyenv](https://github.com/mattberther/zsh-pyenv) plugin. This plugin will install rbenv and make it readily available. 

It also comes with two additional plguins:
[ruby-build](https://github.com/rbenv/ruby-build) which makes the ruby install command available.
[rbenv-update](https://github.com/rkh/rbenv-update) which will check for and update rbenv and all its plugins.

### Upgrade
If you want to upgrade to the latest rbenv: `$ rbenv update`

## Installation

### Manually
Clone this repository into your desired location. (I have mine installed in `.zsh/plugins`) and source it in your `.zshrc`

`git clone https://github.com/ecortinas/zsh-rbenv.git ~/.zsh/plugins`

`echo "source ~/.zsh/plugins/zsh-rbenv.plugin.zsh" >> ~/.zshrc`