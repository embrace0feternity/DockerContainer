#!/bin/sh -l

echo "Hello $1"
echo "The current directory is:"
currentDir=$(pwd)
echo "::set-output name=currentDir::$currentDir"



