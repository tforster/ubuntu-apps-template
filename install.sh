#!/usr/bin/env bash

{
  uat-has() {
    type "$1" > /dev/null 2>&1
  }

  uat-install-dir() {
    echo "${UAT_DIR:-"$HOME/.ubuntu-apps-template"}"
  }

  uat-ver() {
    echo "v0.32.1"
  }

  uat-install() {
    echo "hello"
  }

  uat-install
}





    
