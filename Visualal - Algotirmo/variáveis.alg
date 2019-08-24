algoritmo "variaveis"
// Função :
// Autor :
// Data : 11/8/2012
// Seção de Declarações 
var
valor1, valor2, resultado : real //variáveis globais

//função soma
funcao SOMA(v1, v2 : real) : real
var
total : real   //variáveis locais
inicio
total <- v1 + v2
retorne total
fimfuncao

inicio
escreva ("Informe o valor de 1: ")
leia (valor1)
escreva ("Informe o valor de 2: ")
leia (valor2)
resultado <- SOMA(valor1, valor2)
escreva ("Resultado da soma: ", resultado)
// Seção de Comandos 
fimalgoritmo
