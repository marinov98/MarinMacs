# Emacs guide MY WAY

## Inspiration:
- I became inspired to write this after I configured my emacs init file to the point where I could comftorably wrtie C++, Python, and JavaScript code as well as take notes in Org mode and write LaTex

## Purpose:
- Initially, I made this repo for myself to keep track of my configurations...
- However, now I want to make it more of a guide for anyone trying to switch to emacs and is confused about what packages to install

## Why Make This Guide?
- Emacs has a ton of packages and it can be really confusing which ones are the right ones
- Installing each package requires going to different sites and/or blogs to see how each individual one works, its better to have all the information you need in one place 

## Please Note: 
- I have used emacs ONLY on MacOS and Ubuntu so my knowledge is limited
- Make sure you either have xcode installed or xcode command line tools for MacOS
- NOTE: in order to for brew install {package name} make sure your mac has brew installed

## Contents of this Repo:
- Necesities : General things to have installed when I either get a new machine or switch to a new distro (You DO NOT NEED to view this file) 
- emacs_config folder : Contains my init file as well as the packages that have been installed (with explaination) and the code for each one
- DO NOT go to the emacs_config folder before reading the contents below:
  
## Necesities to make sure all the emacs packages work correctly
- **Disclaimer** : You DO NOT need to install everything here ONLY take what you need
- **Keep In Mind** : You might find certain machines with certain software (such as gcc and python) already installed I put all the topics below in case your machine has almost nothing related to programming installed on it 

## Table of contents:
  - Navigation
  - C++,
  - Python,
  - Javascript,
  - HTML/CSS,
  - GIT,
  - LaTex,
  - Org

  ### C++
  
  ####  gcc
  - Windows (MinGw)
  - Ubuntu (sudo apt-get install gcc)
  - MacOS (brew install gcc)
  #### clang
  - Ubuntu (sudo apt-get install clang)
  - MacOS (brew install clang)
  #### libclang
  - Ubuntu (sudo apt-get install libclang-dev)
  - MacOS should already have it
  #### CMake
  - Ubuntu (sudo apt-get install cmake)
  - MacOS (brew install cmake)
  
  #### Ctags
  - Ubuntu (sudo apt-get install ctags)
  - MacOS (brew install ctags)
  
  ### Python
  
  #### virtualenv (Python interactive shell)
  - Ubuntu (sudo apt-get install virtualenv)
  - MacOS (brew install virtualenv)
  
  #### Pip (allows you to use pip install in your terminal)
  - Ubuntu (sudo apt-get install python-pip)
  - MacOS (brew install pip)
  ##### Packages to install with Pip
  - Rope: pip install rope (refactoring library)
  - Jedi: pip install jedi (intellisense)
  - flake: pip install flake8 (code checks)
  - autopep: pip install autopep8 (Pep8 formatting) 
  - yapf: pip install yapf (Formatting)
  
  ### JavaScript 
  
  #### Before going to Nodejs
  
  ##### install curl 
  - Ubuntu: sudo apt-get install curl
  - MacOS:
  1. ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
  2. brew install curl 
  
  ##### install npm
  - Ubuntu: sudo apt-get install npm
  - MacOS: brew install npm
  
  #### Nodejs
  - look up how to install nodejs
  - After installing node,  install eslint (npm install eslint)
  
  #### GIT (Github)
  ### search up how to set up git on your Operating System AFTER installing it
  - Ubuntu (sudo apt-get install git)
   
  #### Latex
  
  ##### Auctex (creating latex files in emacs) 
  - Ubuntu: sudo apt-get install auctex
  - MacOS: brew install auctex
  
  ##### Cask (for using the dashboard package)
  - MacOS: brew install cask
  - Ubuntu: curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
  
  #### Org
  - Org comes with emacs, so you can directly go into using packages 
   
