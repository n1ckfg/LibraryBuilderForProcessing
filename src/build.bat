@echo off

cd %cd%

mkdir build\LibraryBuilderForProcessing
javac -cp "C:\Program Files\processing\core\library\core.jar" LibraryBuilderForProcessing\*.java
move /y LibraryBuilderForProcessing\*.class build\LibraryBuilderForProcessing\
cd build
jar cvfm ..\LibraryBuilderForProcessing.jar manifest.txt LibraryBuilderForProcessing\*.class
cd ..
move LibraryBuilderForProcessing.jar ..\library\

@pause