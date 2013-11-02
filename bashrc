alias v=vim
alias c=cat
alias la='ls -al'
alias oj='vim `find . -name "*.java"`'
alias og='vim `find . -name "*.groovy"`'
alias g=/usr/local/bin/git
alias bp'=ant build && ant local-publish'
alias ab'=ant build'
alias gradle=/Users/ajoshi/workspace/depot/Tools/build/gradlew
alias gb='Tools/wrapper/gradlew build'
alias gc='Tools/wrapper/gradlew clean'
alias gi='Tools/wrapper/gradlew idea'
alias h=history
alias ctags=/usr/local/bin/ctags
export GRAILS_OPTS='-XX:MaxPermSize=256M -Xmx2048M -DskipCacheFill=true -DonlyRegions=us-east-1,us-west-1,eu-west-1'

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home/

alias tmux="TERM=screen-256color-bce tmux"

function killTomcat {
    ps aux | grep Bootstrap | awk '{print $2}' | xargs kill -9
}

function startTomcat {
    rm /Users/ajoshi/tools/apache-tomcat-6.0.36/logs/catalina.out
    /Users/ajoshi/tools/apache-tomcat-6.0.36/bin/catalina.sh start
}



function crucible {
  java -client -jar /usr/local/bin/post2crucible-1.6.0-standalone.jar --p4client ajoshi-workspace -c $1 -j CR-PDCLOUD -o
}

function backupFastPropertyConsoleSrc {
  cd ~/stash-ws/fastproperty_explorer/
  rsync -av ~/workspace/depot/webapplications/fastproperty_explorer/main/src/ src
  rsync -av ~/workspace/depot/webapplications/fastproperty_explorer/main/test/ test
  rsync -av ~/workspace/depot/webapplications/fastproperty_explorer/main/resources/ resources
}

function platformClient() {
  export P4CLIENT=ajoshi-plat-workspace
}

function explorersClient() {
  export P4CLIENT=ajoshi-explorers-client
}

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ajoshi/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/ajoshi/.gvm/bin/gvm-init.sh"
