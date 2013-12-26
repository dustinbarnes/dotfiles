export PATH="$HOME/bin:$PATH"

# Add path extensions in ~/.path
# Add prompt customizations in ~/.bash_prompt
# Add bash aliases in ~/.aliases
for file in ~/.{path,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

shopt -s nocaseglob          # Ignores case when doing file expansion
shopt -s cdspell             # Fixes minor spelling errors in cd commands
shopt -s histappend          # History is appended to a common file across all shells

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
