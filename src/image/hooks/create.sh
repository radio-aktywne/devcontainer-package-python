#!/usr/bin/env bash

# Create shell history cache files
# This is necessary if the directory was mounted for the first time
# Otherwise, it's a no-op
touch "/shellhistory/.bash_history"
touch "/shellhistory/.zsh_history"
