![screenshot](https://raw.github.com/ecarter/vim-config/master/screenshot.png)

# vim configuration

my personal vim configuration

## Dependencies

* [MacVim](http://code.google.com/p/macvim/) - `brew install macvim`
* [janus](https://github.com/carlhuda/janus)

## Install

Install [janus](janus) and download git submodules:

    $ git clone https://github.com/ecarter/vim-config.git
    $ cd vim-config
    $ make install

Alias `~/.janus` directory to vim configuration:

    $ make link

## Updating

Backup current `~/.janus` directory, update git submodules, and run `rake` on [janus](https://github.com/carlhuda/janus):

    $ make update

## Plugins

* [ColorX](https://github.com/seaofclouds/vim-colorx) - OSX color picker
* [DetectIndent](https://github.com/vim-scripts/DetectIndent) - tame tabs and spaces
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - diff while you diff
* [Hammer](https://github.com/matthias-guenther/hammer.vim) - markdown preview
* [hexHighlight](https://github.com/vim-scripts/hexHighlight.vim) - inline color preview
* [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs) - NERDTree's BBF
* [Powerline](https://github.com/ecarter/vim-powerline) - must have vim gui tools
* [SyntaxAttr](https://github.com/vim-scripts/SyntaxAttr.vim) - determine which attributes are which
* [vim-pug](https://github.com/digitaltoad/vim-pug) - Vim syntax highlighting for Pug (formerly Jade) templates
* [vim-pug-complete](https://github.com/dNitro/vim-pug-complete) - Vim omni-completion support for pug (formerly jade) template engine

## Language Support

* [bash](https://github.com/vim-scripts/bash-support)
* [vim-jade](https://github.com/digitaltoad/vim-jade)
* [vim-jst](https://github.com/briancollins/vim-jst)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-stylus](https://github.com/wavded/vim-stylus)

## Color Schemes

* [fingerpaint.vim](https://github.com/ecarter/fingerpaint.vim)

## Fonts

* [DejaVu Sans Mono](http://dejavu-fonts.org/) awesome monospaced typeface

## License

MIT

