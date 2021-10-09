#!/bin/bash

# Set nonroot user to do most of the script in
echo What is the non-root user that will be used to complete the installation?
read nonrootusr
export nonrootusr

# Set weather to use custom .vimrc
echo "Should autoarch setup a custom vimrc? (Press enter for default custom vimrc)"
read docustvimrc

if [[ $docustvimrc == "" ]]; then
    export docustvimrc="true"
    export custvimrcpath="default"
else
    if [[ $docustvimrc == "yes"  ||  $docustvimrc == "y"  ||  $docustvimrc == "Y" ]]; then
        export docustvimrc='true'
        echo "Please input the custum vimrc url or path"
        read custvimrcpath
        export custvimrcpath
    else
        export docustvimrc='false'
    fi
fi
