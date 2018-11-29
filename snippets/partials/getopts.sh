#!/bin/bash
# Parse options
while getopts ":" OPT
do
  case $OPT in
      *) export FOO=$OPTARG ;;
  esac
done
shift $((OPTIND - 1))

