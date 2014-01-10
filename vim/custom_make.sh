#!/bin/bash

done=false

until $done
do
    if [ -f Makefile ] 
    then
        echo "Executing $(pwd)/Makefile:"
        make
        done=true
        break
    fi
    if [ -d .git ]
    then
        echo "Didn't find a makefile in this repository. Aborting."
        done=true
        break
    fi
    if [ $(pwd) = '/' ]
    then
        echo "Didn't find a makefile. Aborting."
        done=true
        break
    fi
    cd ..
    echo "Entering super directory: $(pwd)"
done 
