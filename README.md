# Base

A baseline Neovim configuration that **anyone** can build from to have a setup uniquely **their own**.

This repo is a base template for those who want to skip using a [preconfigured configuration](#other-options) of Neovim and would rather build their own configuration. This is **not** a batteries included experience, its more of a starting point to teach you how to fish.

## Goals

* No custom code or logic
  - No usage of custom module systems or complicated code organization
  - Only native Neovim functions and API's
* Plugins added with a purpose
  - Every plugin added is also used as an example of how to do something else
  - No "everyone uses it so we added it"
  - Users should be empowered to add plugins day 1 and extending their config - we don't want to take those opportunities away by including too much
* Programming language/Use case agnostic
  - Project should fork for anyone regardless of their reason for using Neovim
* Well documented examples
  - With any example shown there will be helpful comments linking to help docs

## Getting Started

If you have an existing Neovim setup move it to a backup location in case you want it back or want to copy from it.

```bash
mv ~/.config/nvim ~/.config/nvim-backup
```

Clone [packer.nvim](https://github.com/wbthomason/packer.nvim) the package manager used in this project to download and manage plugins.

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


Clone this repo to your config folder

```bash
git clone https://github.com/skbolton/base ~/.config/nvim
```

Move into config directory

```bash
cd ~/.config/nvim
```

Remove existing git directory. Seriously. This config will be yours and as such you shouldn't need to keep up to date with the project

```bash
rm -rf .git
```

This would also be a good time to start your own git repo if you don't have a backup solution in place.

```bash
git init
git add -A
git commit -m "initial commit using base template"
```

## Other options

The Neovim ecosystem moves fast! It can be a lot of work building, updating, and maintaining your own personalized configuration. Sometimes, especially when starting out, you need a full batteries included preconfigured configuration to get you off the ground. There is a growing list of these configurations you can find [here](https://github.com/rockerBOO/awesome-neovim#preconfigured-configuration). Try anyone of these out and see if they work for you. If down the line you feel like you want to build your own this project will be here!
