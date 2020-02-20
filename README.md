# Welcome to my Emacs guide! :sunrise:
- Emacs and Vim users are equally welcomed 

# Contact
- Email me if there are any issues/questions/things that can be better: marin.marinov@macaulay.cuny.edu

## Inspiration:
- I became inspired to write this after I configured my emacs init file to the point where I could comftorably wrtie C++, Python, and JavaScript code as well as take notes in Org mode

## Purpose:
- Initially, I made this repo for myself to keep track of my emacs configurations...
- Now I want to make it more of a guide for anyone trying to switch to emacs whether its from another editor and/or is confused about what packages to install and how to configure.
- Make a guide that welcomes anyone from any editor.

## Who Is This for?
- **Vim users** wanting to switch and use the power of emacs while keepings their vim keybindings
- Anyone wanting to use Emacs for its **own keybindings** and extensibility but hates configuring and wants an out of the box experience
- People who want more productivity but are limited because of their current text editor
- People who already use emacs and maybe want to see if there is anything new they can learn from my config
- Me whenever I forget or want to reference something

## Why Make This Guide?
- Emacs is extremely powerful but has a ton of packages and it can be really confusing to pick the right ones, much less configure them
- Installing each package requires going to different sites and/or blogs to see how each individual one works, its better to have all the information you need in one place 
- Not everybody likes spending time customizing and configuring, they like things that work right out of the box. However, everybody likes speed and Emacs provides that and the configuration should not be what keeps people using editors such as emacs or vim
- What if you are a **Vim user** looking to switch to emacs but keep the powerful vim bindings? My emacs works with evil-mode!
- I just really like to have my stuff online in case event XYZ happens with my machine 

## Quickstart
- for those of you who just want to use/test my config:
  - copy my `init.el` and `MarinMacs.org` into your own `.emacs.d` directory (make one in your home directory if you dont have one)
  - Launch Emacs
  - reference the [install section](#Install-Section) of this guide for stuff you may need to install

## Please Note: 
- I have used Emacs on MacOS, Arch(Antergos), Ubuntu, and Windows(very little) so my knowledge is limited when it comes to anything else
- **Mac Users**: This guide assumes you have [Homebrew](<https://docs.brew.sh/Installation>) installed
  - Also make sure you either have [xcode](https://developer.apple.com/xcode/) installed or xcode command line tools for MacOS
- **Windows Users**: You should be able to install everything here if you use [scoop](https://scoop.sh/) and [choco](https://chocolatey.org/) or download from the official sites of the packages I am refering to the [external installs](#Install-Section]

# Table Of Contents
- [What to install before looking at my config](#Install-Section):
  - [Cask and Curl](#Cask-Curl)
  - [C++](#Cpp)
  - [Python](#Python)
  - [JavaScript](#JavaScript)
  - [Debugger](#Debugger)
  - [Git version control](#GIT)
  - [LaTex](#LaTex)
- [What's in my config?](#Configuration-Section)
  - [Notes Before Beginning](#Notes-Before-Beginning)
  - [Possible Issues](#Possible-Issues)
  - [Themes I use](#Favorite-Themes)
  - [For Vim users](#Vim)
  - [Start-up Screen Packages](#Start-up)
  - [Productivity Packages](#Extra-Productivity-Helper-Packages)
  - [Mode Line Packages](#Modeline-Customization)
  - [Enhance Emacs packages](#Emacs-enhancements)
  - [Shell Packages](#Shell)
  - [Global Packages](#Global-Emacs-Helpers)
  - [Project Management Packages](#Project-Management)
  - [General Coding Packages](#Coding-Productivity)
  - [Git packages](#Git)
  - [Org & MarkDown packages](#Org-and-Markdown)
  - [Language Server Protocal (LSP)](#LSP)
  - [C++ packages](#Cpp)
  - [Python packages](#Python)
  - [Web-Development packages](#Web-Development)
  - [JavaScript/TypeScript packages](#js-ts)
  
## Install-Section
- This section deals with stuff you would need to install outside of emacs to make sure my config works
  
## Quick remarks
- **Disclaimer** : You DO NOT need to install everything here ONLY take what you need
- **CAUTION** : Sometimes repositories and packages become depreciated or change names. I try to keep everything up to date but just be aware when executing the install commands below.
- **Keep In Mind** : You might find certain machines with certain software (such as gcc and python) already installed I put all the topics below in case your machine has almost nothing related to programming installed on it 

- **Mac Users**: run ```xcode-select --install``` or install xcode, installs a lot of stuff for you 

### Cask-Curl
  
#### Curl 
  - Arch: ``` sudo pacman -S curl ```
  - Ubuntu: ```sudo apt install curl```
  - MacOS: ```brew install curl``` 
  
#### Cask (for using the dashboard package)
  - Ubuntu & Arch: ```curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python```
  - MacOS: ```brew tap caskroom/cask```
  
  
### Cpp

**Language server** my config uses: [clangd](<https://clang.llvm.org/extra/clangd/Installation.html>)

### Cpp extras

#### Gcc (GNU Compiler Collection)
  - Arch: ``` sudo pacman -S base-devel ```
  - Ubuntu: ```sudo apt install gcc```
  - MacOS: ```brew install gcc``` to get the latest version of gcc
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
#### Clang-Format (format C-based code) 
  - Arch: ```sudo pacman -S clang-format```
  - Ubuntu: ```sudo apt install clang-format```
  - MacOs: ```brew install clang-format```
#### Ctags (Programming tool that creates tags) {Optional}
  - Arch: ``` sudo pacman -S ctags ```
  - Ubuntu: ```sudo apt install ctags```
  - MacOS: ```brew install ctags```
  - If you are thinking of incorporating tags, you should install pygments (directions below)
  
### Python

#### Pip (Note: be informed of the current state of pip (take into account pip3). This allows you to use pip install in your terminal)
  - Arch: ```sudo pacman -S python-pip```
  - Ubuntu: ```sudo apt install python-pip```
  - MacOS: ```brew install pip```

##### Language-server (**Ms-Windows**: works with `python` instead of `python3`) my config uses: 
   - upgrade setup wheel: `python3 -m pip install --upgrade pip setuptools wheel`
   - Actual language server->`python3 -m pip install 'python-language-server[all]'`
      
### Extras

#### pyenv (python version management)
  - Ubuntu & Arch: 
    - ```git clone https://github.com/yyuu/pyenv.git ~/.pyenv```
    - ```git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv```
  - MacOS: ```brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper```

##### Packages to install with Pip (Caution: pip may not be supported at the time you look at this. Consider using pip3 for everything below)
  - Rope: ``` pip install rope``` (refactoring library)
  - Jedi: ``` pip install jedi``` (intellisense)
  - flake: ```pip install flake8``` (code checks)
  - autopep: ```pip install autopep8``` (Pep8 formatting) 
  - yapf: ```pip install yapf``` (Formatting)
  - pygments : ```pip install pygments``` (This helps ggtags for C++)
  - virtualenv (tool to create isolated Python environments)
    - Run ``` pip install virtualenv``` and ``` pip install virtualnevwrapper``` afterwords
 
### JavaScript/Typescript 
  
##### install npm
  - Arch: ``` sudo pacman -S npm ```
  - Ubuntu: ```sudo apt install npm```
  - MacOS: ```brew install npm```
  
#### Web-Dev autocomplete
  - language servers: 
    - `npm i -g typescript-language-server vscode-json-languageserver vscode-html-languageserver-bin yaml-language-server vscode-css-languageserver-bin bash-language-server`
  
#### Javacript/Html/CSS formatting
  - Install prettier ```npm i -g prettier```
  
#### Debugger (mainly for c/cpp)
  - Arch: ```sudo pacman -S gdb```
  - Ubuntu: ```Sudo apt install gdb```
  - MacOS: ```brew install gdb``` 
  
#### Git
  - Ubuntu: ```sudo apt install git```
  - MacOS: Should have it preinstalled from xcode command line tools
  - **Now search up how to set up git on your Operating System AFTER installation is complete**
    
#### LaTex (Optional)
  
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

# Configuration-Section
- This section is all about what is in my [config file](<https://github.com/marinov98/MarinMacs/blob/master/MarinMacs.org>)
- The below section is more of an overview of my config at a glance, once you view the org configuration file, it has links to manuals or official repos of the packages I thought were important as well as my own commentary on them.

## Notes-Before-Beginning
- I include as much as I can, as I want this guide to be useful to both people who never touched emacs as well as emacs veterans
- Any errors you get can be googled and every package can also be checked online 
- Depending on how you installed emacs, certain packages might be preinstalled into it 
- When you see ```RET``` it means hit the ENTER key
- **In emacs C = ctrl, M = alt, S = shift and s (hyper key) = command key (MacOS) windows key(MS-Windows)**
  - Example: ```M-x``` = alt + x  ```C-x C-f``` = ctrl + x ctrl + f
- If you wish to browse through Emac's packages ```M-x package-list-packages RET``` will open up the package list
  - Additionally, you can run ```M-x package-install RET package_name RET``` if you know the exact package that you want
  - Generally , `use-package` (described below) takes care of automating package installation
- Once again, if you just want to get it over with, simply copy my ```init.el``` and ```MarinMacs.org```(or whatever you want to name your org file) the files should be created inside the ```.emacs.d``` folder which you can create. All the packages should install and configure automatically (power of use-package), **however** you would still have to install the **langauge servers** (instructions below) if you want autocomplete

# Possible-Issues 
- After installing my config on a few different machines (Linux, MacOS, Ms-Windows), my config runs fine, but I have occasionally ran into small issues that can be quickly fixed.
- They are rare but they still happen so below are some solutions to them:
## Issue #1: Package cannot load 
- **Possible Solution** run ```M-x package-refresh-contents ``` , if that doesnt work and the package doesnt mean much to you, remove it from the config or look up the package to see if anything has changed, some packages get deleted over time or replaced or become native to emacs and do not to be specified in the config
## Issue #2 : (some word) is void 
- **Possible Solution #1 :** my config is tested, so there should not be anything that stops your emacs file from loading, however sometimes because my config has long lines of code and emacs default size is not that big, emacs indents and the piece of code goes on a new line and is not part of anything so it looks like an error 
- Best thing to do is ```C-s``` and search for the word and either try to put it in the same line or delete it
- **Possible Solution #2 :** Make sure you have my init.el copied (fix any small indentention issues there) then run ```M-x customize RET```, go to faces->basics faces->default change the size of the emacs screen to prevent it from indenting.


# What My MarinMacs.org File Consists Of (Currently)

## General Settings 
- [Fira Code](<https://github.com/tonsky/FiraCode>) font
- set default indentation to 4
  - set to 2 when working with html/css/js files
- all kinds of tool bars turned off
- Disabled all forms of backup files

# Packages

## Use-Package 
- ```use-package``` (provides the use-package syntax and makes emacs download files if they are not intalled yet)
- `quelpa-use-package` (adds `:quelpa` and allows downloading straight from github)
## restart-emacs
- the ```restart-emacs``` package allows use to keybind the command ```restart-emacs``` so that we can restart and refresh the session with one keystroke whenever we need to.

## Favorite-Themes

### Base16 (Contains 20+ themes but these are my top picks)
- base16-ocean 
- base16-oceanicnext 
- base16-tomorrow-night
- base16-solarized-dark/light

### Colorful and visually pleasing    
- Spacemacs-theme
- Zerodark

### Easy on the eyes
- Gruvbox
- nord
- Zenburn
- JellyBeans 
- Planet
- solarized-dark (from solarized-theme NOT base16)

### For Org and any Markdown Language
- Poet

## Vim 
- **WARNING** You need the `undo-tree` package for below packages to fully work (if you are copying my entire config this is not a problem)
- Some of the **movement keybindings** in the Personal Keybindings section of my init may be disabled if **Evil mode** is enabled
- If you just want **Emacs keybindings** either erase any "evil" package or comment them 
#### Packages for Evil Mode (Vim inside Emacs) : 
- **You have to make sure this package is NOT commented in order to ENABLE THE BINDINGS:**
  - evil (extensible vi layer) -> basically emulates vim inside emacs 
- **Evil support packages:**
  - evil-surround (just like surround in vim)
  - evil-mc (vimlike multiple cursors)
  - evil-magit (vim keybindings for magit)

## Start-up
- dashboard (customizable start up screen)

## Extra-Productivity-Helper-Packages
- which-key (key assignments help)
- ace-window (faster and more convinient window swapping)

## Modeline-Customization 
 - telephone-line 
 - spaceline (currently enabled)
 - powerline 
 - doom-modeline

## Emacs-enhancements
- Debug on multiple-windows
- all-the-icons (provides icon-images)
  - run  `M-x all-the-icons-install-fonts` to install the fonts 
  - (**Windows Users**: after running the command and choosing your directory, go to the directory and manually install the fonts)
- all-the-icons-ivy (icons enhancement for ivy)
- all-the-icons-dired (icons enhancement for dired/ranger)
- ranger (ranger-like file manager, replaces dired)
- **Ivy Integration**
  - ivy (generic completion mechanism for Emacs.)
  - swiper (improved file/name search by integrating ivy, alternative to Emac's I-search)
  - counsel (enhanced ivy commands)
  - ivy-posframe (a different way to display ivy)

## Shell
- better-shell (improves shell functionality within emacs)
- exec-path-from-shell (sets paths for the terminal automatically)

## Global-Emacs-Helpers
- yasnippet, yasnippet snippets (snippets)
  - react-snippets (snippets for React.js)
- company (auto-completion framework)
- flycheck (linter/syntax checker)
- undo-tree (smarter undo and enable **Evil mode**)

## Project-Management
- projectile (Project interaction library for emacs)
- counsel-projectile (extra projectile commands)

## Coding-Productivity
- beacon (light that follows your cursor)
- neotree (popup sidebar for easy directory/file navigation)
- iedit (change all occurrences of a search at the same time)
- dump-jump (jump to definition) 

## Git
- magit (emacs interface for git)
- gitignore-mode (syntax highlighting for .gitignore/.dockerignore files)
- gitconfig-mode (syntax highlighting for .gitconfig files)

## Org-and-Markdown
- org-bullets (prettier org formatting)
- markdown-mode (mode for writing in markdown)
- **DEPRECIATED** Below writing packages are only kept for reverence
  - auctex & tex (smoother latex editing)
  - pdf-tools (pdf support in emacs)
  - wc-mode (word counter)
  - writegood-mode (sentence/word choice checker)

## LSP 
- **Note:** This is where the auto-completetion takes place
- company-lsp: backend for providing autocompletion
- lsp-ui: better ui for showcasing function definitions 
- If you followed my install instructions, after the packages has installed, you should have autocompletetion enabled so long as you say the file is the root of the project when lsp prompts you 
- **Note for Javascript/Typescript** select `ts-ls` as the server to install when prompted unless you want to use a different one 
- Find out more about how this works [here](<https://github.com/emacs-lsp/lsp-mode>)

## Cpp
- c++-modern-font-lock (helpes emacs recognize c++11 and above)
- clang-format (formats c++ code)
- clang-format+ (automatically format C++ code)

## Python
- **Packages below are not used but kept for reference**
- virtualenvwrapper (virtualized isolated python environment)
  - When I start using python more I will probably start utilizing this package again
- elpy (enables a powerful python development environment)
  - this package and `company-jedi` was the way I used to do autocompletion in python
  
## Web-Development 
- web-mode (allows for auto completion and automatic tag closing) 
- modes (provides syntax highlighting for corresponding files)
  - json-mode
  - yaml-mode
  - dockerfile-mode
- skewer (live web development)
- emmet-mode (increase html/css productivity with snippets) 
- rainbow-mode (showcases color in css files)
- prettier-js (auto format js code)

## js-ts
- rjsx-mode enables editing in .jsx files (found in React)
- js2-mode (enables Javascript mode in emacs)
- add-node-modules-path (sets proper path for modules)
- tide (typescript integrated development environment)


