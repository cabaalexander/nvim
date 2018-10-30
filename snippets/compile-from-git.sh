#!/bin/bash

functionName(){
  local TEMP_PATH
  TEMP_PATH=$(mktemp -d)
  local URL=${1:?"Provide a github url"}

  git clone "$URL" "$TEMP_PATH"

  cd "$TEMP_PATH" || return 1

  # Begin

  # e.g.
  # sh autogen.sh
  # ./configure --disable-unicode && make
  # sudo make install

  # End

  cd - &> /dev/null || return 1

  rm -rf "$TEMP_PATH"

}

# If this file is running in terminal call the function `functionName`
# Otherwise just source it
if [ "$(basename "${0}")" = "scriptname.sh" ]
then
  functionName "${@}"
fi
