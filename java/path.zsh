export OPENJDK_HOME="/opt/homebrew/opt/openjdk/bin"
case ":$PATH:" in
  *":$OPENJDK_HOME:"*) ;;
  *) export PATH="$OPENJDK_HOME:$PATH" ;;
esac

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools