#!/bin/bash

recursive_search() {
    for item in "$1"/*; do
        if [ -e "$item" ]; then
            echo "$item"
            if [ -d "$item" ]; then
                recursive_search "$item"
            fi
        fi
    done
}

recursive_search /home