import java.util.Scanner;

public class PermutacaoTeste
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        Permutacao pObjeto = new Permutacao();
        
        System.out.println("Enter a string: ");
        String input = scanner.nextLine(); //recupera a string a permutar
        
        //permuta string
        pObjeto.permuteString("", input);
    }
}
