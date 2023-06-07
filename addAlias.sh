#!/bin/bash

# Array of aliases
aliases=(
  "alias ls='ls --color=auto'  # Colored directory listing"
  "alias ll='ls -alF'         # Long format listing"
  "alias ..='cd ..'           # Go up one directory"
  "alias ...='cd ../..'       # Go up two directories"
  "alias grep='grep --color=auto'  # Colored grep output"
  "alias gs='git status'        # Git status"
  "alias ga='git add'           # Git add"
  "alias gc='git commit -m'     # Git commit with message"
  "alias gp='git push'          # Git push"
  "alias gl='git log --oneline --decorate --graph'  # Git log with graph"
  "alias dl='cd ~/Downloads'   # Go to Downloads directory"
  "alias dt='cd ~/Desktop'     # Go to Desktop directory"
  "alias ..2='cd ../../'       # Go up two directories"
  "alias cp='cp -i'           # Prompt before overwriting files"
  "alias mv='mv -i'           # Prompt before overwriting files"
  "alias rm='rm -i'           # Prompt before deleting files"
  "alias mkdir='mkdir -p'     # Create parent directories if they don't exist"
  "alias psg='ps aux | grep'     # Process grep"
  "alias h='history'             # Show command history"
  "alias c='clear'               # Clear the terminal"
  "alias reboot='sudo reboot'    # Reboot the system"
  "alias shutdown='sudo shutdown'  # Shutdown the system"
  "alias myip='curl ifconfig.me'     # Get public IP address"
  "alias ports='netstat -tulanp'     # List listening ports"
  "alias ping='ping -c 5'            # Ping with 5 packets"
  "alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'  # Perform a speedtest"
  "alias pipe='|'  # Alias for the pipe command"
)

# Add aliases to ~/.bashrc
for alias in "${aliases[@]}"; do
  if ! grep -q "$alias" ~/.bashrc; then
    echo "$alias" >> ~/.bashrc
  fi
done

# Source ~/.bashrc to apply changes immediately
source ~/.bashrc

echo "Aliases added to ~/.bashrc"
