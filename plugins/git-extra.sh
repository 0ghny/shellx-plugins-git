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
  [[ "${SHELLX_PLUGIN_GIT_FEATURES}" =~ "extra" ]] \
) || return
# .............................................................................
# Aliases
# .............................................................................
alias g='git'
# short_revision HEAD
alias short-revision='git rev-parse --short=7'
# revision HEAD
alias revision='git rev-parse'
alias merge-from='git pull origin'
alias merge-main='git pull origin main'
alias git-log-count='git shortlog -sn'
