#!/bin/bash

function xecho {
  local v
  while [ "$1" ]; do
    v="$1"
    [[ "$v" =~ ^[0-9]{1}: ]] && {
      echo -e -n "\e[3${v::1}m"
      v="${v:2}"
    }
    echo -n -e "$v "
    shift
  done
  echo -e '\e[0m'
}

# vim: ft=bash
