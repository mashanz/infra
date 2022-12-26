#!/usr/bin/env bash

echo "INFRA Shell"

INFRA_SHELL_PATH=$HOME/.infra
DEFAULT_PROJECT_PATH=$HOME/infra/projects


read -p "Enter the project path [$DEFAULT_PROJECT_PATH]: " PROJECT_PATH

PROJECT_PATH=${PROJECT_PATH:-$DEFAULT_PROJECT_PATH}

if [ ! -d $PROJECT_PATH ]; then
    echo "Creating project directory"

    mkdir -p $PROJECT_PATH
fi


if [ -d $PROJECT_PATH ]; then
    rm -rf $INFRA_SHELL_PATH
fi

echo "Installing INFRA Shell.."

cp -a ./ $INFRA_SHELL_PATH

echo "PROJECT_PATH=$PROJECT_PATH" > $INFRA_SHELL_PATH/.env

# chmod
chmod +x $INFRA_SHELL_PATH/infra

if [ "$(uname)" == "Darwin" ]; then
    rm -rf /usr/local/bin/infra
    ln -s $INFRA_SHELL_PATH/infra /usr/local/bin
else
    rm -rf $HOME/.local/bin/infra
    ln -s $INFRA_SHELL_PATH/infra $HOME/.local/bin
fi

exit
