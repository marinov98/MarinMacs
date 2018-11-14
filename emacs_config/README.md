# What my .emacs file consists of (currently)

## Note before beginning
- Any errors you get can be googled and every package can also be checked online 

## Fonts
- Hack (What I use currently)
- Source Code Pro
- Inconsolata

## General settings 
- linium(line numbers) 
- tabspace: 4 
- syntax highlighting
- debugging on error 

## To be tested packages
- use-package (cleaner way to define packages and faster)
- try (try emacs packages before installing them)
- which-key (key assignments)
- ace-window (easier window switching)
- switch window (similiar to ace-window)
- ggtags/rtags (C++ stuff)
-pdf tools

## Favorite Themes

### Base16 
- base16-ocean (One I use now :) )
- base16-oceannext
- base16-solarized-dark/light 

### Flashy    
- Spacemacs-theme
- Zerodark

### Easy on the eyes
- Gruvbox
- Zenburn

## Convenience packages :

### Searching 
- ivy (improved file search)
- swiper (improved file/name search)
- counsel (enhanced ivy commands)
- avy (fast word navigation)
### Directory Navigation
- neotree (easy directory navigation)
- ranger (replaces dired mode)
- projectile (easier project navigation)
- counsel-projectile (ivy integration of projectile)
### Coding
- Auctex (smoother latex editing)
- dump-jump (jump to definition) 
- company (auto-completion)
- flycheck (linter/syntax checker ) 
- auto-complete (convinient global auto-completion within emacs)
- yasnippet, yasnippet snippets (snippets)
### GitHub Integration 
- iedit (change multiple words at the same time)
- magit (git integration)
- better-shell (improves shell functionality within emacs)
### Miscellaneous packages
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
#### C++ Irony-server:
- Run irony-install-server after you put compamy-irony in your init file( will only work if you have cmake and libclang installed!)
- After irony server is setup M-x flycheck-select-checker RET irony RET

## Python packages: 
- virtualenv (interactive python shell) (OPTIONAL but you still need the file for jedi to work)
- virtualenvwrapper
- elpy (enables a powerful python development environment)
- jedi (intellisense)
#### Python Jedi Server :
- Run jedi:install-server AFTER you added it to your init file (.emacs or .emacs.d/init.el, etc..) AND AFTER you installed virtualenv

## Csharp packages:
- csharp-mode (Allows for emacs to recognize Csharp files)
- omnisharp (development environment for Csharp)

## JavaScript packages:
- js2-mode (enables Javascript mode in emacs)
- js2-refactor (powerful refactoring)
- xref-js2 (easy jumping to definitions and refrences)
- company-tern (Javascript autocompletion)
- flycheck-jslint (javascript linter)
- flycheck-jshint (javascript hints)

## Web-Development Packages:
- csswatcher (sudo cpan i CSS::Watcher to install csswatcher file)
- company-web (auto-completion)
- web-mode (allows for auto completion and automatic tag closing) 
- emmet-mode (increase html/css productivity) (OPTIONAL)
