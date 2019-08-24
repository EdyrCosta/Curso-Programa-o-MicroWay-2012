public class CalcularFatorial
{
    //método fatorial recursivo
    public long fatorial(long numero)
    {
        if(numero <= 1)//testa caso básico
            return 1; //casos básicos: 0! = 1 e 1! = 1
        else //passo de recursão
            return numero * fatorial(numero - 1);
    }
    
    //gera a saída de fatoriais para valores 0-10
    public void displayFatoriais()
    {
        //calcula o fatorial de 0 a 10
        for(int contador = 0; contador <= 10; contador++)
            System.out.printf("%d! = %d\n", contador, fatorial(contador));
    }
}
