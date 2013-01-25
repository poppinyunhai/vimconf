## Introduction

This is my vim configuration files.

## Installation

### Step 1: Copy files
    $ deploy.sh

### Step 2: Install fonts for your OS

#### Mac OS X
    $ open ./fonts/Menlo-Powerline.otf
    
#### Linux

Install `./fonts/Monaco_Linux-Powerline.ttf`

### Step 3: Install ctags

#### Mac OS X
    $ brew install ctags
    
#### Linux
Use your package manager to install `ctags`

e.g. ubuntu:

    $ sudo apt-get install ctags
    

### Step 4: compile `command-t`

the `command-t` plugin can only be compiled by Ruby 1.8, so if you're using RVM, you should switch to the system default ruby before compiling.


    $ cd ~/.vim/ruby/command-t
    $ rvm use system
    $ ruby ./extconf.rb
    $ make
