#!/bin/bash


function die_ec(){
    echo "Die with error $1 and exit code $2."
    [ $2 ] && return $2 || exit $2;
}