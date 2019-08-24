algoritmo "vetor"
// Função :
// Autor :
// Data : 11/8/2012
// Seção de Declarações 
var
numero : vetor [1..4] de real
i, numeros_negativos : inteiro
inicio
escreval ("Informe 4 números: ")
numeros_negativos <- 0
para i de 1 ate 4 faca
     leia (numero[i])
     se numero[i] < 0 entao
          numeros_negativos <- numeros_negativos + 1
     fimse
fimpara
escreva ("Total de números negativos: ", numeros_negativos)
// Seção de Comandos 
fimalgoritmo
