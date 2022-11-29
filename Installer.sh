#!/bin/bash
#Logging formatting
bold=$(tput bold)
# shellcheck disable=SC2034
underline=$(tput smul)
# shellcheck disable=SC2034
italic=$(tput sitm)
# shellcheck disable=SC2034
info=$(tput setaf 2)
error=$(tput setaf 160)
# shellcheck disable=SC2034
warn=$(tput setaf 214)
reset=$(tput sgr0)

#Logging template
#echo "${info}INFO${reset}: This is an ${bold}info${reset} message"
#echo "${error}ERROR${reset}: This is an ${underline}error${reset} message"
#echo "${warn}WARN${reset}: This is a ${italic}warning${reset} message"


function create_app() {
  echo "${info}INFO${reset}: Creating ${bold}expo app.${reset}"
  npx create-expo-app . --template blank-typescript -y
}

function core_install() {
  # Install core dependencies
  echo "${info}INFO${reset}: Installing ${bold}@react-navigation/native${reset}."
  npm install @react-navigation/native
  echo "${info}INFO${reset}: Installing ${bold}react-native-screens ${reset}and${bold} react-native-safe-area-context${reset}."
  expo install react-native-screens react-native-safe-area-context
}

function stack_navigator() {
  # Install Stack Navigation
  echo "${info}INFO${reset}: Installing ${bold}@react-navigation/native-stack${reset}."
  npm install @react-navigation/native-stack
}

function tab_navigation() {
  # Install Tab Navigation
  echo "${info}INFO${reset}: Installing ${bold}@react-navigation/bottom-tabs${reset}."
  npm install @react-navigation/bottom-tabs
  echo "${info}INFO${reset}: Installing ${bold}@expo/vector-icons${reset}."
  npm install @expo/vector-icons
}

function drawer_navigation() {
  # Install Drawer Navigation
  echo "${info}INFO${reset}: Installing ${bold}@react-navigation/drawer${reset}."
  npm install @react-navigation/drawer
  echo "${info}INFO${reset}: Installing ${bold}react-native-gesture-handler and react-native-reanimated${reset}."
  expo install react-native-gesture-handler react-native-reanimated
}

function others() {
  # Additional libraries
  echo "${info}INFO${reset}: Installing ${bold}react-native-webview${reset}."
  expo install react-native-webview
  echo "${info}INFO${reset}: Installing ${bold}react-native-youtube-iframe${reset}."
  npm install react-native-youtube-iframe
}

# If case for custom name

if [[ (-z "$1" ) && ("$2" = "-full") ]]
  then
    echo "${error}ERROR${reset}: There were no ${bold} name ${reset} provided for the project."
  else
    echo "${info}INFO${reset}: The project is gonna be created with the  ${bold}$1${reset} as the name";
    npx create-expo-app $1 --template blank-typescript -y
    mkdir $1/ || cd $1/;
    echo "${info}INFO${reset}: The project is gonna installed with ${bold}all${reset} the packages  ";
    create_app
    core_install
    stack_navigator
    tab_navigation
    drawer_navigation
    others
fi



if [ $# -eq 0 ]; then
  echo "${error}ERROR${reset}: There were no ${bold}parameters${reset} provided."
fi
