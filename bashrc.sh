#!bin/bash

# Some useful bash aliases and functions for use within TeamCity

# Usage:  tc_set <name> <value>
# Set an environment variable in the current shell, and emit the
# special teamcity tag to cause it to be set for this entire build
# configuration.

tc_set () {
  __CMD="export $1=\"$2\""
  eval "$__CMD"
  printf "##teamcity[setParameter name='env.%s' value='%s']\n" $1 $2
}
