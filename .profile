export PATH="$HOME/bin:$PATH"

# Add path extensions in ~/.path
# Add prompt customizations in ~/.bash_prompt
# Add bash aliases in ~/.aliases
for file in ~/.{path,prompt,exports,aliases,functions,completions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

shopt -s nocaseglob          # Ignores case when doing file expansion

# Autocorrect fudged paths in cd calls
shopt -s cdspell

# Make sure a resolved binary on the PATH still exists before executing
shopt -s checkhash

# Update columns and rows if window size changes
shopt -s checkwinsize

# Put multi-line commands onto one line of history
shopt -s cmdhist

# Include dotfiles in pattern matching
shopt -s dotglob

# Enable advanced pattern matching
shopt -s extglob

# Append rather than overwrite Bash history
shopt -s histappend

# Don't use Bash's builtin host completion
shopt -u hostcomplete

# Don't warn me about new mail all the time
shopt -u mailwarn

# Ignore me if I try to complete an empty line
shopt -s no_empty_cmd_completion

# Use programmable completion, if available
shopt -s progcomp

# Warn me if I try to shift when there's nothing there
shopt -s shift_verbose

# Don't use PATH to find files to source
shopt -u sourcepath

# Load NVM (node version manager)
source $(brew --prefix nvm)/nvm.sh
