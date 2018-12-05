# My Emacs guide 
- Emacs and Vim users are equally welcomed 

## Inspiration:
- I became inspired to write this after I configured my emacs init file to the point where I could comftorably wrtie C++, Python, and JavaScript code as well as take notes in Org mode and write LaTex

## Purpose:
- Initially, I made this repo for myself to keep track of my emacs configurations...
- Now I want to make it more of a guide for anyone trying to switch to emacs whether its from another editor and/or is confused about what packages to install and how to configure.
- Make a guide that welcomes anyone from any editor.

## Who Is This for?
- **Vim users** wanting to switch and use the power of emacs while keepings their vim keybindings
- Anyone wanting to use Emacs for its **own keybindings** and extensibility but hates configuring and wants an out of the box experience
- People who want more productivity but are limited because of their current text editor

## Why Make This Guide?
- Emacs is extremely powerful but has a ton of packages and it can be really confusing to pick the right ones, much less configure them
- Installing each package requires going to different sites and/or blogs to see how each individual one works, its better to have all the information you need in one place 
- Not everybody likes spending time customizing and configuring, they like things that work right out of the box. However, everybody likes speed and Emacs provides that and the configuration should not be what keeps people using editors such as emacs or vim
- What if you are a **Vim user** looking to switch to emacs but keep the powerful vim bindings? My emacs works with evil-mode!
- I just really like to have my stuff online in case event XYZ happens with my machine 

## What my Emacs can do
- Has packages that allow for
  - Fast project/file navigation
  - jump-to-definition
  - Advanced word search
  - smart file managers
  - tree explorers
  - smart undo
- Has ide-like support for these languages
  - C++
  - Python
  - Javascript
  - A little of html/css
- Allows for either Vim keybindings or original native Emacs keybindings
- Improved debugger

## Please Note: 
- I have used Emacs on MacOS, Arch(Antergos), & Ubuntu so my knowledge is limited when it comes to anything else
- Make sure you either have [xcode](https://developer.apple.com/xcode/) installed or xcode command line tools for MacOS
- In order to use ```brew install [package name]``` make sure your mac has [brew](https://brew.sh/) installed

## Contents of this Repo:
- This README is here to make sure that when you go to my config, everything gets installed without giving error, it would be a pity if you got the config right, but the packages do not even work 
- **emacs_config** folder : Contains my [init](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/marinit.org) file as well as a [manual](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/README.md) that lists all the packages that have been installed and their purpose. If you just want to see that then just click the init link and go to it. I wanted to make this guide as detailed as possible and tried to ensure that everything you try here works. 
- **DO NOT** go to the emacs_config folder before reading the contents below:
  
# Necesities to make sure all the emacs packages work correctly
- **Disclaimer** : You DO NOT need to install everything here ONLY take what you need
- **Keep In Mind** : You might find certain machines with certain software (such as gcc and python) already installed I put all the topics below in case your machine has almost nothing related to programming installed on it 

## Table of contents:
  - [C++](#Cpp)
  - [Python](#Python)
  - [JavaScript](#JavaScript)
  - [Debugger](#Debugger)
  - [GIT](#GIT)
  - [LaTex](#LaTex)
  
  ### Cpp
  
  ####  Gcc (GNU Compiler Collection)
  - Arch: ``` sudo pacman -S base-devel ```
  - Ubuntu: ```sudo apt-get install gcc```
  - MacOS: Either run ```xcode-select --install``` or install xcode 
  #### Clang (Compiler front-end for C++)
  - Arch: ``` sudo pacman -S clang ```
  - Ubuntu: ```sudo apt-get install clang```
  - MacOS: Settled by xcode
  #### Libclang (C API that exposes the C++ abstract syntax)
  - Arch: ``` sudo pacman -S llvm lldb```
  - Ubuntu: ```sudo apt-get install libclang-dev```
  - MacOS: ```brew install --with-toolchain llvm```
  #### CMake (software application for managing the build process of software)
  - Arch: ```sudo pacman -S cmake```
  - Ubuntu: ```sudo apt-get install cmake```
  - MacOS: ```brew install cmake```
  #### Clang-Format
  - Arch: ```sudo pacman -S clang-format```
  - Ubuntu: ```sudo apt-get install clang-format```
  - MacOs: ```brew install clang-format```
  #### Ctags (Programming tool that creates tags) 
  - Arch ``` sudo pacman -S ctags ```
  - Ubuntu: ```sudo apt-get install ctags```
  - MacOS: ```brew install ctags```
  ##### Additional install intructions for Ctags to work with ggtags (dont worry about this part too much, im experimenting  with it) 
  - **Simply make sure you have ctags here is the [ggtags](https://github.com/leoliu/ggtags) repo if you want to have a go at configuring it**
  - I **may or may not** switch to rtags, I want to do more research on the tags and test them on my config 
  - Whatever I choose, we woul still need to install pygments (directions below)
  
  ### Python
  
  #### pyenv (python version management)
  - Ubuntu & Arch: 
  1. ```git clone https://github.com/yyuu/pyenv.git ~/.pyenv```
  2. ```git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv```
  - MacOS: ```brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper```
  #### Pip (allows you to use pip install in your terminal)
  - Arch ```sudo pacman -S python-pip```
  - Ubuntu ```sudo apt-get install python-pip```
  - MacOS ```brew install pip```
  ##### Packages to install with Pip
  - Rope: ``` sudo pip install rope``` (refactoring library)
  - Jedi: ``` sudo pip install jedi``` (intellisense)
  - flake: ```sudo pip install flake8``` (code checks)
  - autopep: ```sudo pip install autopep8``` (Pep8 formatting) 
  - yapf: ```sudo pip install yapf``` (Formatting)
  - pygments : ```sudo pip install pygments``` (This helps ggtags for C++)
  #### virtualenv (Python interactive shell)
  - Run ``` sudo pip install virtualenv``` and ``` sudo pip install virtualnevwrapper``` afterwords
  
  ### JavaScript 
  
  ##### install curl 
  - Arch: ``` sudo pacman -S curl ```
  - Ubuntu: ```sudo apt-get install curl```
  - MacOS:
  1. ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null```
  2. ```brew install curl``` 
  
  ##### install npm
  - Arch: ``` sudo pacman -S npm ```
  - Ubuntu: ```sudo apt-get install npm```
  - MacOS: ```brew install npm```
  
  #### Eslint for Javascript
  
  - install eslint ```npm install eslint```
  
  #### Javascript autocompletion
  - run ```sudo npm install -g tern```
  
  #### Debugger
  - Arch: ```sudo pacman -S gdb```
  - Ubuntu ```Sudo apt-get install gdb```
  - MacOS ```brew install gdb``` 
  
  #### GIT (Github)
  - Ubuntu: ```sudo apt-get install git```
  - MacOS: Should have it preinstalled from xcode command line tools
  - **Now search up how to set up git on your Operating System AFTER installation is complete**
    
  #### LaTex
  
  ##### Auctex (creating latex files in emacs) 
  - Arch: ``` sudo pacman -S auctex```
  - Ubuntu: ```sudo apt-get install auctex```
  
  ##### Cask (for using the dashboard package)
  - Ubuntu & Arch: ```curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python```
  - MacOS: ```brew install cask```
  
