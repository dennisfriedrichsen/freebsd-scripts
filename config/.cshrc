# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h         history 25
alias j         jobs -l
alias la        ls -a
alias lf        ls -alF
alias ll        ls -lA

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin)

setenv  EDITOR  vi
setenv  PAGER   more
setenv  BLOCKSIZE       K

if ($?prompt) then
        # An interactive shell -- set some stuff up
        set filec
        set history = 100
        set savehist = 100
        set mail = (/var/mail/$USER)
        if ( $?tcsh ) then
                bindkey "^W" backward-delete-word
                bindkey -k up history-search-backward
                bindkey -k down history-search-forward

        set prompt = "% "

        endif
endif

alias ruler 'echo 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 '
