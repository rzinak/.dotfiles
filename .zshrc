export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dpoggi"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=/opt/jdk-17.0.11
export PATH=$JAVA_HOME/bin:$PATH

export M2_HOME=/opt/apache-maven-3.9.8
export PATH=${M2_HOME}/bin:${PATH}

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/ren/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ren/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/ren/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ren/google-cloud-sdk/completion.zsh.inc'; fi

# compile
alias jc="mvn compile"

# run
alias jr="mvn exec:java"

# maven test
alias mtest="mvn test"

# maven build
alias mbuild="mvn clean install"

# spring run
alias mrun="mvn spring-boot:run"

# log to file
alias 'r-awk -spring -tf'="mvn spring-boot:run | awk '{print $0}' > log.txt"

# export PATH=$PATH:/usr/local/go/bin

alias cppcomp='function _gcompile() { g++ -o "${1%.*}" "$1"; }; _gcompile'

# export PATH=~/bin:$PATH
