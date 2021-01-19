# show-boots
Shows boot and shutdown times of today

Move file to folder, give execution rights and optionally set alias.

e.g. 
```
mkdir ~/bin
cd ~/bin
cp ~/Downlodas/show-boots.sh show-boots.sh
chmod 700 show-boots.sh
```

Then in .bash_profile or .zshrc etc.: 
```
alias sb=$HOME/bin/show-boots.sh
```

Source the file and execute it:
```
source ~/.zshrc
sb
```
