#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd $DIR

mkdir build/LibraryBuilderForProcessing
javac -cp /Applications/Processing.app/Contents/Java/core.jar LibraryBuilderForProcessing/*.java
mv LibraryBuilderForProcessing/*.class build/LibraryBuilderForProcessing/
cd build
jar cvfm ../LibraryBuilderForProcessing.jar manifest.txt LibraryBuilderForProcessing/*.class
cd ..
mv LibraryBuilderForProcessing.jar ../library/