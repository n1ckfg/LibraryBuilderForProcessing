@echo off

cd %~dp0

javadoc -cp "C:\Program Files\processing\core\library\core.jar" -d ..\reference LibraryBuilderForProcessing\*.java 

@pause