# ===== Basics

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt AUTO_CD

# Allow comments even in interactive shells (especially for Muness)
setopt INTERACTIVE_COMMENTS

# ===== History

# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY 

# Add comamnds as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY 

# Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_DUPS

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY

# ===== Prompt

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt PROMPT_SUBST

# Treat these characters as part of a word.
WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

# Display CPU usage stats for commands taking more than REPORTTIME seconds
REPORTTIME=10

