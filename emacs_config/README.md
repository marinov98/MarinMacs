# My Emacs Configuration :sunrise:

# Contact
- **Email me if there are any issues/questions/things that can be better**: marin.marinov@macaulay.cuny.edu

# Table Of Contents
- [Notes Before Beginning](#Notes-Before-Beginning)
- [Possible Issues](#Possible-Issues)
- [Themes I use](#Favorite-Themes)
- What Packages Are In My Init File:
  - [For Vim users](#Vim)
  - [Start-up Screen Packages](#Start-up)
  - [Productivity Packages](#Extra-Productivity-Helper-Packages)
  - [Mode Line Packages](#Modeline-Customization)
  - [Enhance Emacs packages](#Emacs-enhancements)
  - [Shell Packages](#Shell)
  - [Global Packages](#Global-Emacs-Helpers)
  - [Project Management Packages](#Project-Management)
  - [General Coding Packages](#Coding-Productivity)
  - [Github package](#GitHub-Integration)
  - [Org & MarkDown packages](#Org-and-Markdown)
  - [Language Server Protocal (LSP)](#LSP)
  - [C++ packages](#Cpp)
  - [Python packages](#Python)
  - [Web-Development packages](#Web-Development)
  - [JavaScript/TypeScript packages](#js-ts)
  
  

## :loudspeaker: IMPORTANT:  
- I use init.el and marinmacs.org to run my emacs! The [.emacs](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/backup/.emacs) file in the backup folder is an old version of my init file without utilizing org mode and use-package
- **Make sure** you read the previous [README](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/README.md) before proceeding with this part of the guide.

# Things to consider as you customize your emacs

## Notes-Before-Beginning
- Any errors you get can be googled and every package can also be checked online 
- Depending on how you installed emacs, certain packages might be preinstalled into it 
- When you see ```RET``` it means hit the ENTER key
- **In emacs C = ctrl and M = alt**
  - Example: ```M-x``` = alt + x  ```C-x C-f``` = ctrl + x ctrl + f
- If you wish to browse through Emac's packages ```M-x package-list-packages RET``` will open up the package list
- Additonally you can run ```M-x package-install RET package_name RET``` if you know the exact package that you want 
- If you just want to get it over with, simply copy my ```init.el``` and ```marinmacs.org```(or whatever you want to name your org file) the files should be created inside the ```.emacs.d``` folder which you can create. All the packages should install and configure automatically (power of use-package), **however** you would still have to install the servers for jedi(Python) and irony(C++) (instructions for that below)

# Possible-Issues 
- After installing my config on a few different machines, I encountered some minor bugs, but they are easily fixed
- They are rare but they still happen so here are some solutions to them 
## Issue #1: Package cannot load 
- **Possible Solution** run ```M-x package-refresh-contents ``` , if that doesnt work and the package doesnt mean much to you, remove it from the config or look up the package to see if anything has changed, some packages get deleted over time or replaced or become native to emacs and do not to be specified in the config
## Issue #2 : (some word) is void 
- **Possible Solution #1 :** my config is tested, so there should not be anything that stops your emacs file from loading, however sometimes because my config has long lines of code and emacs default size is not that big, emacs indents and the piece of code goes on a new line and is not part of anything so it looks like an error 
- Best thing to do is ```C-s``` and search for the word and either try to put it in the same line or delete it
- **Possible Solution #2 :** Make sure you have my init.el copied (fix any small indentention issues there) then run ```M-x customize RET```, go to faces->basics faces->default change the size of the emacs screen to prevent it from indenting.

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

# What My Init File Consists Of (Currently)

## General Settings 
- set tab to 4 spaces
- force editor to use spaces
- syntax highlighting
- debugging on error 
- tool bar turned off
- Disable annoying backup files
- [Fira Code](<https://github.com/tonsky/FiraCode>) font

# Packages

## Use-Package 
- ```use-package``` (provides the use-package syntax and makes emacs download files if they are not intalled yet)
- `quelpa-use-package` (adds `:quelpa` and allows downloading straight from github)
## restart-emacs
- the ```restart-emacs``` package allows use to keybind the command ```restart-emacs``` so that we can restart and refresh the session with one keystroke whenever we need to.

## Vim 
- **WARNING** You need the `undo-tree` package for below packages to fully work (if you are copying my entire config this is not a problem)
- Some of the **movement keybindings** in the Personal Keybindings section of my init may be disabled if **Evil mode** is enabled
- If you just want **Emacs keybindings** either erase any "evil" package or comment them 
#### Packages for Evil Mode (Vim inside Emacs) : 
- **You have to make sure this package is NOT commented in order to ENABLE THE BINDINGS:**
  - evil (basically creates vim inside emacs) 
- **Evil support packages:**
  - evil-surround (just like surround in vim)
  - evil-mc (vimlike multiple cursors)
  - evil-magit (vim keybindings for magit)

## Start-up
- dashboard (customizable start up screen)

## Extra-Productivity-Helper-Packages
- which-key (key assignments help)
- ace-window (faster window swapping)

## Modeline-Customization 
- Pick one:
  - telephone-line 
  - spaceline (currently enabled)
  - powerline 

## Emacs-enhancements
- Debug on multiple-windows
- all-the-icons (provides icon-images)
  - run  `M-x all-the-icons-install-fonts` to install the fonts 
  - (**Windows Users**: after running the command and choosing your directory, go to the directory and manually install the fonts)
- all-the-icons-ivy (icons enhancement for ivy)
- all-the-icons-dired (icons enhancement for dired/ranger)
- ranger (ranger-like file manager, replaces dired)
- avy (fast word navigation)
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
- counsel-projectile (ivy integration of projectile)

## Coding-Productivity
- beacon (light that follows your cursor)
- neotree (popup sidebar for easy directory/file navigation)
- iedit (change multiple words at the same time)
- dump-jump (jump to definition) 

## GitHub-Integration 
- magit (emacs interface for git)

## Org-and-Markdown
- org-bullets (prettier org formatting)
- markdown-mode (mode for writing in markdown)
- **DEPRECIATED** Below writing writing packages are only kept for reverence
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
- **Packages Below are not used but kept for reference**
  - virtualenvwrapper (virtualized isolated python environment)
  - elpy (enables a powerful python development environment)
  
## Web-Development 
- web-mode (allows for auto completion and automatic tag closing) 
- skewer (live web development)
- emmet-mode (increase html/css productivity with snippets) 
- rainbow-mode (showcases color in css files)
- prettier-js (auto format js code)

## js-ts
- rjsx-mode enables editing in .jsx files (found in React)
- js2-mode (enables Javascript mode in emacs)
- add-node-modules-path (sets proper path for modules)
- tide (typescript integrated development environment)


