alias ls='ls --group-directories-first --color=auto -I "NTUSER*" -I "ntuser*"'
alias ll='ls -l | lolcat'
alias md='/c/Program\ Files\ \(x86\)/MarkdownPad\ 2/MarkdownPad2.exe'
alias  n='/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe -multiInst'
alias  s='/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe'

alias start='cmd.exe \/C "start $1"'

alias jnb='jupyter notebook --no-browser'

#alias gitk='gitk.exe'
#alias ggui='git-gui.exe'

alias cat='lolcat'

alias svnshallow='svn up --set-depth=immediates'
alias svndeep='svn up --set-depth=infinity'

alias proverb='fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat'

alias did='printf "### `date \"+%a %d %b %Y - %H:%M\"`\n\n" > /tmp/new.md && cat ~/GDrive/notes/journal.md >> /tmp/new.md && cp /tmp/new.md ~/GDrive/notes/journal.md'


