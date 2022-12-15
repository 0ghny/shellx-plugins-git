# shellcheck shell=bash disable=SC2235
# .............................................................................
# guard
#  - Git should be installed
#  - SHELLX_PLUGIN_GIT_FEATURES variable has to be defined either in ENV
#     or in shellxrc file
#  - SHELLX_PLUGIN_GIT_FEATURES should contains @all or extra
# .............................................................................
command -v git >/dev/null || return
[[ -n "${SHELLX_PLUGIN_GIT_FEATURES}" ]] || return
( \
  [[ "${SHELLX_PLUGIN_GIT_FEATURES}" =~ "@all" ]] || \
  [[ "${SHELLX_PLUGIN_GIT_FEATURES}" =~ "os-integration" ]] \
) || return
# .............................................................................
# Aliases
# .............................................................................
alias checkout='git checkout -b'
alias clone='git clone'
alias add='git add'
alias groot='git rev-parse --show-toplevel'
alias branch='git rev-parse --abbrev-ref HEAD'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias commit='git commit -am'
alias commiti='git commit -a'
alias ammend='git commit -v -a --amend'
alias rebase='git rebase -i'
