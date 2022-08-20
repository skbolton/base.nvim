# Base

> This project is a work in progress expect a bumpy road while things are getting filled in

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
  - Find other awesome plugins at [awesome-list](https://github.com/rockerBOO/awesome-neovim) or [neovimcraft](https://neovimcraft.com/)
* Programming language/Use case agnostic
  - Project should work for anyone regardless of their reason for using Neovim
* Well documented examples
  - With any example shown there will be helpful comments linking to help docs and external resources
* Scalable setup
  - Config should be ready to grow with the user as they customize - for this reason the config is not presented as a single file

## Getting Started

If you have an existing Neovim setup move it to a backup location in case you want it back or to copy from it.

```bash
mv ~/.config/nvim ~/.config/nvim-backup
```

Clone [packer.nvim](https://github.com/wbthomason/packer.nvim) the package manager used in this project to download and manage plugins.

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Clone base to config location.

```bash
git clone --depth 1 https://github.com/skbolton/base.nvim ~/.config/nvim
```

Move into config directory.

```bash
cd ~/.config/nvim
```

Remove existing git directory. Seriously! Moving forward this config will be yours and in the spirit of the project you shouldn't need to sync with the repo anymore.

```bash
rm -rf .git
```

This would also be a good time to start your own git repo if you don't have a backup solution in place.

```bash
git init
git add -A
git commit -m "initial commit using base template"
```

Next launch Neovim and install all the plugins using `packer.nvim`. The `+PackerSync` syntax below tells Neovim to run the command on startup. You could also launch Neovim and run `:PackerSync` to achieve the same affect.

> run `:help startup-options` in Neovim for an explanation on the `+` syntax used here

```bash
nvim +PackerSync
```

At this point all the plugins should be installed and the baseline ready to go. `init.lua` is the entry point and the best file to start with to learn how things work.

## Other options

The Neovim ecosystem moves fast! It can be a lot of work building, updating, and maintaining your own personalized configuration. Sometimes, especially when starting out, you need a full batteries included preconfigured configuration to get you off the ground. There is a growing list of these configurations you can find [here](https://github.com/rockerBOO/awesome-neovim#preconfigured-configuration). Try anyone of these out and see if they work for you. If down the line you feel like you want to build your own this project will be here!
