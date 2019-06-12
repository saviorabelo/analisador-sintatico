# Analisador Sintático

## Esse é um exemplo de analisador sintático para validar expressões aritméticas que incluem parênteses, colchetes e chaves.
Foi ullizado a linguagem C para a implementação.

### Para executar o programa no WINDOWS é preciso realizar os seguintes passos:

* Instalar o [MinGW](http://www.mingw.org/) na seguinte pasta: C:\MinGW\bin.
* Verificar se a pasta 'win_flex_bison-latest' está no mesmo diretório que o arquivo principal.
* Compilar o analisador sintático com o script 'compila'.
* E por fim, executar o arquivo 'analisador'.

### Para executar o programa no LINUX é preciso realizar o seguinte script:
```
sudo apt-get update
sudo apt-get install flex
sudo apt-get install bison
apt-get install gcc

flex analisador.l
bison -d parser.y
gcc parser.tab.c lex.yy.c -o analisador.exe
./analisador.exe
 ```
