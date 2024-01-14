#!/bin/bash

setup() {
    if command -v python3 &>/dev/null; then
        PYTHON_VERSION=$(python3 --version | awk '{print $2}')
    else
        echo "Python is not installed."
        exit 1
    fi

    echo "Detected Python version: $PYTHON_VERSION"
    pipenv --python "$PYTHON_VERSION"
    pipenv shell
    pipenv install
}

setup