# My Emacs Configuration

## IMPORTANT:  
- I use init.el and marinov.org to run my emacs! The [.emacs](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/.emacs) file is an old version of my init file without utilizing org mode
- **Make sure** you read the previous [README](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/README.md) before proceeding with this guide

# Things to consider as you customize your emacs

## Note before beginning
- Any errors you get can be googled and every package can also be checked online 
- Depending on how you installed emacs, certain packages might be preinstalled into it 
- When you see ```RET``` it means hit the ENTER key
- In emacs C = ctrl and M = alt 
- Example: ```M-x``` = alt + x  ```C-x C-f``` = ctrl + x ctrl + f
- You cannot start installing packages until you have ```(require `package)``` in your [init](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/init.el) file (init.el or .emacs) 
- Once you have it ```M-x package-list-packages RET``` will open up the package list
- Additonally you can run ```M-x package-install RET package_name RET``` if you know the exact package that you want 
- If you just want to get it over with, simply copy my init.el and marinov.org all the packages should install and configure automatically (power of use-package), **however** you would still have to install the servers for jedi and irony

## Good Fonts For Programming
- Hack (Personal Favorite)
- Source Code Pro
- Inconsolata

## To Be Tested Packages
- Reveal.js (create presentations with org mode)
- skewer (live web development)


## Favorite Themes

### Base16 
- base16-ocean (Personal Favorite)
- base16-ocean-next
- base16-solarized-dark/light 

### Flashy    
- Spacemacs-theme
- Zerodark

### Easy on the eyes
- Gruvbox
- Zenburn

# What My Init File Consists Of (Currently)

- **Theme:** Base16-Ocean
- **Font:** Hack

## General Settings 
- line numbers 
- tabspace: 4
- force editor to use spaces
- syntax highlighting
- debugging on error 
- tool bar turned off

## Fun packages
- dashboard (customizable start up screen)
- beacon (light that follows your cursor)

## Extra Productivity Helper Packages
- which-key (key assignments help)
- ace-window (faster window swapping)

## Modeline
- telephone-line (better looking modeline)

## Searching 
- ivy (improved file search)
- swiper (improved file/name search by integrating ivy)
- counsel (enhanced ivy commands)
- avy (fast word navigation)

## Directory Navigation
- all-the-icons (provides icon-images)
- neotree (popup sidebar for easy directory/file navigation)
- ranger (replaces dired mode)
- projectile (easier project navigation)
- counsel-projectile (ivy integration of projectile)

## Packages That Make Coding Easier And Faster
- better-shell (improves shell functionality within emacs)
- dump-jump (jump to definition) 
- company (auto-completion)
- flycheck (linter/syntax checker)
- flycheck-pos-tip (shows errors immedietly where the cursor points)
- auto-complete (convinient global auto-completion within emacs)
- yasnippet, yasnippet snippets (snippets)
- cider (interactive programming with closure)
- iedit (change multiple words at the same time)

## GitHub Integration 
- magit 

## Org
- org-ac (auto-completion for org)
- org-bullets (nicer org formatting)
- auctex & tex(smoother latex editing)
- pdf-tools (pdf support in emacs)
- wc-mode (word counter)
- writegood-mode (sentence/word choice checker)

## C++ packages: 
- c++-modern-font-lock (integrates c++11 and above) (OPTIONAL)
- clang-format (formats c++ code) (OPTIONAL)
- irony (C++ minor mode based on libclang)
- irony-eldoc (indexes c++)
- flycheck-irony (C/C++/obj-C syntax checker)
- company-irony (provides true intelligent c++ intellisense and autocompletetion)
- company-irony-c-headers (auto completetion for header files)
- ggtags (creates tags and analyzes code)
#### C++ Irony-server:
- Run ```M-x irony-install-server RET``` after you put company-irony in your init file(will only execute if you have cmake and libclang installed!). You now have C++ intellisense :D
- After irony server is setup ```M-x flycheck-select-checker RET irony RET``` If you decided to install flycheck-irony 

## Python packages: 
- virtualenv (interactive python shell) 
- virtualenvwrapper
- elpy (enables a powerful python development environment)
- company-jedi (intellisense)
#### Python Jedi Server :
- Run ``` M-x jedi:install-server RET``` AFTER you added it to your init file (.emacs or .emacs.d/init.el, etc..) AND AFTER you installed virtualenv

## JavaScript packages:
- js2-mode (enables Javascript mode in emacs)
- js2-refactor (powerful refactoring)
- xref-js2 (easy jumping to definitions and refrences)
- company-tern (Javascript intellisense)
- add-node-modules-path (sets proper path for modules)

## Web-Development Packages:
- csswatcher (indexes and keeps track of css)
- web-mode (allows for auto completion and automatic tag closing) 
- emmet-mode (increase html/css productivity with snippets) (OPTIONAL)

## Csharp packages:
- **Disclaimer:** Csharp on emacs is something that I am still experimenting with
- csharp-mode (Allows for emacs to recognize Csharp files)
- omnisharp (development environment for Csharp)
