#!/usr/bin/env bash

detect_os() {
  case "$(uname -s)" in
    Linux*)     OS="linux" ;;
    Darwin*)    OS="mac" ;;
    *)          OS="unknown" ;;
  esac

  echo "$OS"
}