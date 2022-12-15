# shellx-plugins-git

ShellX plugins for Git

## Install

```shell
# Having shellx already installed and loaded into your SHELL
$ shellx::plugins::install https://github.com/0ghny/shellx-plugins-git
```

## Configure

This plugin, even if installed, since the nature of it, requires to enable it manually.
To enable it edit your ~/.shellxrc file and adds

```shell
SHELLX_PLUGIN_GIT_FEATURES=( @all )
```

this will enable all features. If you wanna enable only certain features you can write all feature names instead of `@all` to handle specific features.

Current features are:

- extra
- os-integration

## Features (Plugins)

### Git Extra

Enables `git-extra.sh`, basic integration and aliases like set `g` for alias of `git`

### Os Integration

Enables `git-os-integration.sh` full integration of git in command line in much natural language. 

As example, it creates aliases for `clone`, `checkout` or `commit` so if you wanna commit something into your repostiory you just need to

```shell
$ commit "this is a commit"
```

and your will commit your current changes.
