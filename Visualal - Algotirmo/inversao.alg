algoritmo "inversão"
// Função :
// Autor :
// Data : 11/8/2012
// Seção de Declarações 
var
a, b : inteiro

procedimento inverte(var x, y : inteiro)
var
aux : inteiro
inicio
      aux <- x
      x <- y
      y <- aux
fimprocedimento

inicio
// Seção de Comandos 
a <- 10
b <- 42
escreval ("A:",a,"   B:",b)
inverte(a,b)
escreval("A:",a,"    B:",b)
fimalgoritmo
