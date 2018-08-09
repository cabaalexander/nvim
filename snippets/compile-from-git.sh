#!/bin/bash

functionName(){
  local TEMP_PATH="<path/here/please>"

  rm -rf ${TEMP_PATH}

  git clone <github-repo-url> ${TEMP_PATH}

  cd ${TEMP_PATH}

  # Action

  # <what you need to do goes here>

  # End Action

  cd -

  rm -rf ${TEMP_PATH}
}

# If this file is running in terminal call the function `functionName`
# Otherwise just source it
if [ "$(basename ${0})" = "scriptname.sh" ]
then
  functionName "${@}"
fi
