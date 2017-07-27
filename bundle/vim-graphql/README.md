# graphql.vim

[![Build Status](https://travis-ci.org/jparise/vim-graphql.svg)](https://travis-ci.org/jparise/vim-graphql)

This is a [Vim](http://www.vim.org/) plugin that provides [GraphQL][gql] file
detection and syntax highlighting. It currently targets the [April 2016 draft
specification][spec].

## Installation

### Using [Plug][]

1. Add `Plug 'jparise/vim-graphql'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

### Using [Vundle][]

1. Add `Plugin 'jparise/vim-graphql'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

### Using [Pathogen][]

1. `cd ~/.vim/bundle`
2. `git clone https://github.com/jparise/vim-graphql.git`

## Testing

The test suite uses [Vader.vim][]. To run all of the tests from the command
line:

    $ make test

[gql]: http://graphql.org/
[spec]: https://facebook.github.io/graphql/
[Pathogen]: https://github.com/tpope/vim-pathogen
[Plug]: https://github.com/junegunn/vim-plug
[Vundle]: https://github.com/gmarik/vundle
[Vader.vim]: https://github.com/junegunn/vader.vim
