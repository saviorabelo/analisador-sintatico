@echo off
SET "MINGW_DIR=C:\MinGW\bin"
SET "FB_DIR=.\win_flex_bison-latest"

SET PATH=%PATH%;%MINGW_DIR%;%FB_DIR%

win_flex analisador.l
win_bison -d parser.y
gcc parser.tab.c lex.yy.c -o analisador.exe