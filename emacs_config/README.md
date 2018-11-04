# What my .emacs file consists of (currently)

## general settings 
linium(line numbers), tabspace: 4, syntax highlighting

## Convenience packages :
- projectile (easier project navigation)
- dump-jump(jump to definition) 
- flycheck(linter) 
- neotree(easy directory navigation)
- auto-complete (convinient global auto-completion within emacs)
- yasnippet, yasnippet snippets (snippets)
- iedit (change multiple words at the same time)
- magit (git integration)

## C++ packages: 
- c++-modern-font-lock (integrates c++11 and above) (OPTIONAL)
- flycheck-irony (smarter flycheck linter for c++)
- flycheck-clang, flycheck-clang-analyzer (OPTIONAL provide linting capabilities similiar to flycheck-irony)
- clang-format (formats c++ code) (OPTIONAL)
- irony-mode 
- company-irony (provides true intelligent c++ intellisense and autocompletetion) 
##### Run irony-install-server after you put compamy-irony in your init file ( THIS IS WHERE YOU NEED TO MAKE SURE YOU HAVE LIBCLANG AND CMAKE INSTALLED)


## Python packages: 

### notes : Install packages in this order
- virtualenv
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
csharp-mode

## JavaScript packages:
- js2-mode (enables Javascript mode in emacs)
- js2-refactor (powerful refactoring)
- xref-js2 (easy jumping to definitions and refrences)
- company/company-tern (Javascript autocompletion)
- flycheck-jslint (javascript linter)
- flycheck-jshint (javascript hints)

## Web-dev
- web-mode (allows for auto completion and automatic tag closing) 
- emmet-mode (increase html/css productivity) (OPTIONAL)
