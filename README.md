# My Dotfiles 

This is my lightsaber, you should craft your own.

## Install

Start by running the bootstrap script.  This is only intended to be run on debian or
ubuntu based systems.  It will install all the packages I expect to exist in a base
installation.

```
wget -O - -o /dev/null https://goo.gl/ZeZwXn | sudo bash -s
```

Change into the dotfile directory.

```
cd $HOME/Projects/dotfiles
```

Switch the repostiory to use ssh instead of http.  If you don't run this command git
will continue to try and use the https connection and ask for a password each time.

```
rake git:reset
```

Then list all available actions.

```
rake -T
```

If this is the first time you're running this on a fresh install start by copying the dot files.

```
rake home:dotfiles
```

## Source Installs

The Rakefile includes a number of tasks for installing other software from
source.  In most cases the source files are downloaded into the $HOME/tmp
directory and then extracted.  If the build system for the source packages
honors a --prefix setting it's installed into $HOME/.opt/packagename.  This
means that in most cases you have to add $HOME/.opt/packagename/bin to the
path in your $HOME/.bashrc.

The basic idea is that this arrangment makes it easier to uninstall the
package if necessary.

In some cases, if it's a single file script for example, it may install into
$HOME/.local/bin instead.

## Languages

One of my primary goals was to make it easy to install programming languages.
Tasks exist to install these languages, but beware some of the install scripts
may be outdated.

  * Clojure
  * Coffeescript
  * Erlang
  * Elixir
  * Chibi Scheme
  * Chicken Scheme
  * Gambit Scheme
  * Gauche Scheme
  * Go
  * Haskell
  * Idris
  * Node
  * Purescript
  * Rust
