# :computer:	My Emacs guide :computer:	
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
- People who already use emacs and maybe want to see if there is anything new they can learn from my config

## Why Make This Guide?
- Emacs is extremely powerful but has a ton of packages and it can be really confusing to pick the right ones, much less configure them
- Installing each package requires going to different sites and/or blogs to see how each individual one works, its better to have all the information you need in one place 
- Not everybody likes spending time customizing and configuring, they like things that work right out of the box. However, everybody likes speed and Emacs provides that and the configuration should not be what keeps people using editors such as emacs or vim
- What if you are a **Vim user** looking to switch to emacs but keep the powerful vim bindings? My emacs works with evil-mode!
- I just really like to have my stuff online in case event XYZ happens with my machine 

## What my Emacs can do
- Has packages that allow for:
  - Fast project/file navigation
  - jump-to-definition
  - Advanced word search
  - smart file managers and explorers
  - tree explorers
- Has ide-like support for these languages:
  - C++
  - Python
  - JavaScript/TypeScript
  - HTML/CSS
- Allows for either Vim keybindings or original native Emacs keybindings
- Debugger
- Integrates with Git 
- Can format code

## Please Note: 
- I have used Emacs on MacOS, Arch(Antergos), & Ubuntu so my knowledge is limited when it comes to anything else
- Make sure you either have [xcode](https://developer.apple.com/xcode/) installed or xcode command line tools for MacOS
- In order to use ```brew install [package name]``` make sure your mac has [brew](https://brew.sh/) installed

## Contents of this Repo:
- This README is here to make sure that when you go to my config, everything gets installed without giving error, it would be a pity if you got the config right, but the packages do not even work 
- **emacs_config** folder : Contains my [init](<https://github.com/marinov98/MarinMacs/blob/master/emacs_config/init.el>), which launches my [configuration file](https://github.com/marinov98/MarinMacs/blob/master/emacs_config/MarinMacs.org) file as well as a [manual](<https://github.com/marinov98/MarinMacs/blob/master/emacs_config/README.md>) that lists all the packages that have been installed and their purpose. If you just want to see that then just click the init link and go to it. I wanted to make this guide as detailed as possible and tried to ensure that everything you try here works. 
- **Highly Reccommend** reading the contents below before seeing my actual config:
  
# Necesities to make sure all the emacs packages work correctly
- **Disclaimer** : You DO NOT need to install everything here ONLY take what you need
- **CAUTION** : Sometimes repositories and packages become depreciated or change names. I try to keep everything up to date but just be aware when executing the install commands below.
- **Keep In Mind** : You might find certain machines with certain software (such as gcc and python) already installed I put all the topics below in case your machine has almost nothing related to programming installed on it 

## Table of contents:
  - [Cask and Curl](#Cask-Curl)
  - [C++](#Cpp)
  - [Python](#Python)
  - [JavaScript](#JavaScript)
  - [Debugger](#Debugger)
  - [Git version control](#GIT)
  - [LaTex](#LaTex)
  
  ### Cask-Curl
  
  #### Curl 
  - Arch: ``` sudo pacman -S curl ```
  - Ubuntu: ```sudo apt install curl```
  - MacOS:
    - ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null```
    - ```brew install curl``` 
  
  #### Cask (for using the dashboard package)
  - Ubuntu & Arch: ```curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python```
  - MacOS: ```brew install cask```
  
  
  ### Cpp
  
  ####  Gcc (GNU Compiler Collection)
  - Arch: ``` sudo pacman -S base-devel ```
  - Ubuntu: ```sudo apt install gcc```, ```sudo apt install build-essential``` will install a lot of dependencies
  - MacOS: 
    - Either run ```xcode-select --install``` or install xcode 
    - ```brew install gcc``` to get the latest version of gcc
  - Please also install [clangd](<https://clang.llvm.org/extra/clangd/Installation.html>)
  #### Clang (Compiler front-end for C++)
  - Arch: ``` sudo pacman -S clang ```
  - Ubuntu: ```sudo apt install clang```
  - MacOS: Settled by xcode
  #### Libclang (C API that exposes the C++ abstract syntax)
  - Arch: ``` sudo pacman -S llvm lldb```
  - Ubuntu: ```sudo apt install libclang-dev```
  - MacOS: ```brew install --with-toolchain llvm```
  #### CMake (software application for managing the build process of software)
  - Arch: ```sudo pacman -S cmake```
  - Ubuntu: ```sudo apt install cmake```
  - MacOS: ```brew install cmake```
  #### Clang-Format
  - Arch: ```sudo pacman -S clang-format```
  - Ubuntu: ```sudo apt install clang-format```
  - MacOs: ```brew install clang-format```
  #### Ctags (Programming tool that creates tags) 
  - Arch: ``` sudo pacman -S ctags ```
  - Ubuntu: ```sudo apt install ctags```
  - MacOS: ```brew install ctags```
  - If you are thinking of incorporating tags, you should install pygments (directions below)
  
  ### Python
  
  #### pyenv (python version management)
  - Ubuntu & Arch: 
    - ```git clone https://github.com/yyuu/pyenv.git ~/.pyenv```
    - ```git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv```
  - MacOS: ```brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper```
  #### Pip (Note: be informed of the current state of pip. Allows you to use pip install in your terminal)
  - Arch: ```sudo pacman -S python-pip```
  - Ubuntu: ```sudo apt install python-pip```
  - MacOS: ```brew install pip```
  ##### Packages to install with Pip (Caution: pip may not be supported at the time you look at this. Consider using pip3 for everything below except the language server)
  - Rope: ``` sudo pip install rope``` (refactoring library)
  - Jedi: ``` sudo pip install jedi``` (intellisense)
  - flake: ```sudo pip install flake8``` (code checks)
  - autopep: ```sudo pip install autopep8``` (Pep8 formatting) 
  - yapf: ```sudo pip install yapf``` (Formatting)
  - pygments : ```sudo pip install pygments``` (This helps ggtags for C++)
  - Language-server: 
    - `python3 -m pip install --upgrade pip setuptools wheel`
    - `python3 -m pip install 'python-language-server[all]'`
  #### virtualenv (Python interactive shell)
  - Run ``` sudo pip install virtualenv``` and ``` sudo pip install virtualnevwrapper``` afterwords
  
  ### JavaScript 
  
  ##### install npm
  - Arch: ``` sudo pacman -S npm ```
  - Ubuntu: ```sudo apt install npm```
  - MacOS: ```brew install npm```
  
  #### JavaScript autocompletion
  - Install language server: ```npm i -g javascript-typescript-langserver```
  
  #### Javacript/Html/CSS formatting
  - Install prettier ```npm i -g prettier```
  
  #### Other useful npm installs
  - ``npm i -g react pg requirejs webpack```
  
  #### Debugger
  - Arch: ```sudo pacman -S gdb```
  - Ubuntu: ```Sudo apt install gdb```
  - MacOS: ```brew install gdb``` 
  
  #### GIT
  - Ubuntu: ```sudo apt install git```
  - MacOS: Should have it preinstalled from xcode command line tools
  - **Now search up how to set up git on your Operating System AFTER installation is complete**
    
  #### LaTex
  
  ##### Auctex (creating latex files in emacs) 
  - Arch: ``` sudo pacman -S auctex```
  - Ubuntu: ```sudo apt install auctex```
  - MacOS:
    - ```brew tap caskroom/cask```
    - ```brew cask install mactex```
  
  ##### Spellcheck
  - Arch: ```sudo pacman -S aspell```
  - Ubuntu: ```sudo apt install aspell```
  - MacOs: ```brew install aspell```
  
  
  
