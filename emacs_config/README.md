# My Emacs Configuration

## IMPORTANT:  
- I use init.el and marinit.org to run my emacs! The [.emacs](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/emacs_config/.emacs) file is an old version of my file without the org 
- **Make sure** you read the previous [README](https://github.com/marinov98/My_Emacs-Detailed_Guide/blob/master/README.md) before proceeding with this guide
## TODO: 
- Implement all the packages using use-package 

## Note before beginning
- Any errors you get can be googled and every package can also be checked online 
- Depending on how you installed emacs, certain packages might be preinstalled into it 
- When you see ```RET``` it means hit the ENTER key
- In emacs C = ctrl and M = alt 
- Example: ```M-x``` = alt + x  ```C-x C-f``` = ctrl + x ctrl + f
- You cannot start installing packages until you have ```(require `package)``` in your init (init.el or .emacs) file
- Once you have it ```M-x package-list-packages RET``` will open up the package list
- Additonally you can run ```M-x package-install RET package_name RET``` if you know the exact package that you want 

## Good Fonts For Programming
- Hack (Personal Favorite)
- Source Code Pro
- Inconsolata

## General Settings 
- line numbers 
- tabspace: 4
- force editor to use spaces
- syntax highlighting
- debugging on error 

## To Be Tested Packages
- use-package (cleaner way to define packages and faster)
- Reveal.js (create presentations with org mode)
- pdf-tools (emacs support for pdf)
- skewer (live web development)

## Favorite Themes

### Base16 
- base16-ocean (Personal Favorite)
- base16-oceannext
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

## Convenience packages :

### Searching 
- ivy (improved file search)
- swiper (improved file/name search by integrating ivy)
- counsel (enhanced ivy commands)
- avy (fast word navigation)

### Directory Navigation
- neotree (easy directory navigation)
- ranger (replaces dired mode)
- projectile (easier project navigation)
- counsel-projectile (ivy integration of projectile)

### Coding
- better-shell (improves shell functionality within emacs)
- Auctex (smoother latex editing)
- dump-jump (jump to definition) 
- company (auto-completion)
- flycheck (linter/syntax checker ) 
- auto-complete (convinient global auto-completion within emacs)
- yasnippet, yasnippet snippets (snippets)
- cider (interactive programming with closure)
- iedit (change multiple words at the same time)

### GitHub Integration 
- magit 

### Miscellaneous packages
- which-key (key assignments help)
- ace-window (faster window swapping)
- dashboard (customizable start up screen)
- beacon (light that follows your cursor)
- telephone-line (better looking modeline)

## Org
- org-ac (auto-completion for org)
- org-bullets (nicer org formatting)

## C++ packages: 
- c++-modern-font-lock (integrates c++11 and above) (OPTIONAL)
- flycheck-irony 
- clang-format (formats c++ code) (OPTIONAL)
- irony
- irony-eldoc (indexes c++)
- company-irony (provides true intelligent c++ intellisense and autocompletetion)
- company-irony-c-headers (auto completetion for header files)
- ggtags (creates tags and analyzes code)
#### C++ Irony-server:
- Run ```M-x irony-install-server RET``` after you put compamy-irony in your init file( will only work if you have cmake and libclang installed!)
- After irony server is setup ```M-x flycheck-select-checker RET irony RET```

## Python packages: 
- virtualenv (interactive python shell) (OPTIONAL but you still need the file for jedi to work)
- virtualenvwrapper
- elpy (enables a powerful python development environment)
- company-jedi (intellisense)
#### Python Jedi Server :
- Run ``` M-x jedi:install-server RET``` AFTER you added it to your init file (.emacs or .emacs.d/init.el, etc..) AND AFTER you installed virtualenv

## JavaScript packages:
- js2-mode (enables Javascript mode in emacs)
- js2-refactor (powerful refactoring)
- xref-js2 (easy jumping to definitions and refrences)
- company-tern (Javascript autocompletion)
- flycheck-jslint (javascript linter)
- flycheck-jshint (javascript hints)

## Web-Development Packages:
- csswatcher 
- company-web (auto-completion)
- web-mode (allows for auto completion and automatic tag closing) 
- emmet-mode (increase html/css productivity) (OPTIONAL)

## Csharp packages:
- **Disclaimer:** Csharp on emacs is something that I am still experimenting with
- csharp-mode (Allows for emacs to recognize Csharp files)
- omnisharp (development environment for Csharp)
