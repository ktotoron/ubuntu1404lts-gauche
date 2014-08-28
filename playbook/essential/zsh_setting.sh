#!/bin/bash

if [[ ! -e $HOME/.zshrc.antigen ]];then

  # $HOME/.zshrc.antigen
  cat << 'ZSH_AG_END' > $HOME/.zshrc.antigen

# load antigen
source ~/.zsh_ext/antigen.git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo
antigen-bundle antigen-lib
antigen-bundle git 
antigen-bundle autojump
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-completions
antigen-bundle tetsujin/zsh-function-mysql
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
 
# Load the theme.
antigen-theme robbyrussell

antigen-apply

ZSH_AG_END


  # $HOME/.zshrc
  cat << 'ZSHRC_END' >> ~/.zshrc

source ~/.zshrc.antigen

ZSHRC_END

fi


