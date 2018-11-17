# Emacs guide MY WAY

## Inspiration:
- I became inspired to write this after I configured my emacs init file to the point where I could comftorably wrtie C++, Python, and JavaScript code as well as take notes in Org mode and write LaTex

## Purpose:
- Initially, I made this repo for myself to keep track of my configurations...
- However, now I want to make it more of a guide for anyone trying to switch to emacs and is confused about what packages to install

## Why Make This Guide?
- Emacs has a ton of packages and it can be really confusing which ones are the right ones
- Installing each package requires going to different sites and/or blogs to see how each individual one works, its better to have all the information you need in one place 
- Also I just really like to have my stuff online in case event XYZ happens with my machine 

## Please Note: 
- I have used emacs ONLY on MacOS and Ubuntu so my knowledge is limited
- Make sure you either have xcode installed or xcode command line tools for MacOS
- **NOTE:** in order to for brew install {package name} make sure your mac has brew installed

## Contents of this Repo:
- [**MyChecklist.md**](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/MyChecklist.md) : General things to have installed when I either get a new machine or switch to a new distro (You DO NOT NEED to view this file) 
- **emacs_config** folder : Contains my [init](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/init.el) file as well as the packages that have been installed (with explaination) and the code for each one
- **DO NOT** go to the emacs_config folder before reading the contents below:
  
## Necesities to make sure all the emacs packages work correctly
- **Disclaimer** : You DO NOT need to install everything here ONLY take what you need
- **Keep In Mind** : You might find certain machines with certain software (such as gcc and python) already installed I put all the topics below in case your machine has almost nothing related to programming installed on it 

## Table of contents:
  - Navigation
  - C/C++
  - Python
  - Javascript
  - HTML/CSS
  - GIT
  - LaTex
  - Org
  
  ### Navigation 
  **NOTE**: the things listed for Navigation are OPTIONAL, emacs should able to use their packages without them being on your machine 
   #### Ranger:
  - Ubuntu: Ranger is in Ubuntu's default repositories
  - MacOS ```brew install ranger```
  #### Ivy :
  - Ubuntu (Ivy creates a few more steps for Linux please look it up)
  - MacOS: 
  1. ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null```
  2. ```brew install ivy```
  
  ### C/C++
  
  ####  Gcc (GNU Compiler Collection)
  - Windows (MinGw)
  - Ubuntu: ```sudo apt-get install gcc```
  - MacOS: ```brew install gcc```
  #### Clang (Compiler front-end for C++)
  - Ubuntu ```sudo apt-get install clang```
  - MacOS ```brew install clang```
  #### Libclang (C API that exposes the C++ abstract syntax)
  - Ubuntu ```sudo apt-get install libclang-dev```
  - MacOS: ```brew install --with-toolchain llvm```
  #### CMake (software application for managing the build process of software)
  - Ubuntu: ```sudo apt-get install cmake```
  - MacOS: ```brew install cmake```
  #### Ctags (Programming tool that creates tags) 
  - Ubuntu: ```sudo apt-get install ctags```
  - MacOS: ```brew install ctags```
  ##### Additional install intructions for Ctags
  - ```./configure --prefix=<PREFIX> --with-exuberant-ctags=/usr/local/bin/ctags```
     ```make && make install```
  - Install pygments (directions below)   
  
  ### Python
  
  #### Pip (allows you to use pip install in your terminal)
  - Ubuntu ```sudo apt-get install python-pip```
  - MacOS ```brew install pip```
  ##### Packages to install with Pip
  - Rope: ```pip install rope``` (refactoring library)
  - Jedi: ```pip install jedi``` (intellisense)
  - flake: ```pip install flake8``` (code checks)
  - autopep: ```pip install autopep8``` (Pep8 formatting) 
  - yapf: ```pip install yapf``` (Formatting)
  - pygments : ```pip install pygments``` (This helps ggtags for C++)
  #### virtualenv (Python interactive shell)
  - Ubuntu ```sudo apt-get install virtualenv```
  - MacOS ```brew install virtualenv```
  
  ### JavaScript 
  
  ##### install curl 
  - Ubuntu: ```sudo apt-get install curl```
  - MacOS:
  1. ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null```
  2. ```brew install curl``` 
  
  ##### install npm
  - Ubuntu: ```sudo apt-get install npm```
  - MacOS: ```brew install npm```
  
  #### Nodejs
  - look up how to install nodejs
  - After installing node,  install eslint (npm install eslint)
  
  ### HTML/CSS
  - Csswatcher : ```sudo cpan i CSS::Watcher```
  
  #### GIT (Github)
  - Ubuntu ```sudo apt-get install git```
  - MacOS: Should have it preinstalled from xcode command lind tools
  ### Now search up how to set up git on your Operating System AFTER installation is complete
   
  #### Latex
  
  ##### Auctex (creating latex files in emacs) 
  - Ubuntu: ```sudo apt-get install auctex```
  - MacOS: ```brew install auctex```
  
  ##### Cask (for using the dashboard package)
  - MacOS: ```brew install cask```
  - Ubuntu: ```curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python```
  
  #### Org
  - Org comes with emacs, so you can directly go into using packages 
   
