# What my .emacs file consists of (currently)

## Note before beginning
- any errors you get can be googled and every package can also be checked online 

## general settings 
- linium(line numbers) 
- tabspace: 4 
- syntax highlighting
- debugging on error 

## To be tested packages
- Treemacs (navigation similiar to neotree)
- use-package (cleaner way to define packages and faster)
- try and which-key (work in combination with use-package)

## Themes 

### Themes to be tested
- Zenburn 
- gruvbox

### Base16 
- base16-ocean (One I use now :) )
- base16-solarized-dark/light 

### Other cool things  
- spacemacs-theme
- Zerodark


## Convenience packages :
- Auctex (smoother latex editing)
- projectile (easier project navigation) + counsel projectile (ivy integration of projectile)
- dump-jump (jump to definition) 
- company (auto-completion)
- flycheck (linter/syntax checker ) 
- neotree (easy directory navigation)
- auto-complete (convinient global auto-completion within emacs)
- yasnippet, yasnippet snippets (snippets)
- iedit (change multiple words at the same time)
- magit (git integration)

## Org
- org-ac (auto-completion for org)
- org-bullets (nicer org formatting)

## C++ packages: 
- c++-modern-font-lock (integrates c++11 and above) (OPTIONAL)
- flycheck-clang (clang linter for c++) 
- flycheck-irony (smarter flycheck linter for c++ combines with flycheck-clang) (The one I use)
- flycheck-clang-analyzer (OTHER LINTER OPTIONS provide linting capabilities similiar to flycheck-irony) (OPTIONAL)
- clang-format (formats c++ code) (OPTIONAL)
- irony-mode 
- irony-eldoc (indexes c++)
- company-irony (provides true intelligent c++ intellisense and autocompletetion)
- company-irony-c-headers (auto completetion for header files)
#### Run irony-install-server after you put compamy-irony in your init file (THIS IS WHERE YOU NEED TO MAKE SURE YOU HAVE LIBCLANG AND CMAKE INSTALLED)
#### After irony server is setup M-x flycheck-select-checker RET irony RET
#### You can do the same with clang-analyzer 

## Python packages: 

### notes : Install packages in this order
- virtualenv (interactive python shell) (OPTIONAL but you still need the file for jedi to work)
- virtualenvwrapper
- elpy (enables a powerful python development environment)
#### Before moving to jedi
##### install pip (allows you to use pip install in your terminal)
- Ubuntu (sudo apt install python-pip)
- MacOS (brew install pip)
##### now install the following packages
- pip install rope
- pip install jedi
##### flake8 for code checks
- pip install flake8
##### and autopep8 for automatic PEP8 formatting
pip install autopep8
##### and yapf for code formatting
pip install yapf

#### After the packages are installed:
- install jedi on emacs (Run jedi:install-server after you added it to your init file (.emacs or .emacs.d/init.el, etc..) AND AFTER you installed virtualenv)

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

## Web-dev
- csswatcher (sudo cpan i CSS::Watcher to install csswatcher file)
- company-web (auto-completion)
- web-mode (allows for auto completion and automatic tag closing) 
- emmet-mode (increase html/css productivity) (OPTIONAL)
