
import java.io.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Teste de Serialização");

        String p1, p2;
        p1 = "Testandoh";
        p2 = "Quarentenah";

        try {
            //Cria uma forma de escrever arquivos no S.O.
            FileOutputStream fileOutputStream = new FileOutputStream("Teste_Bruna");
            //Cria objeto que faz a conversão em bytes dos objetos
            ObjectOutputStream outputStream = new ObjectOutputStream(fileOutputStream);

            //Escreve os objetos no arquivo
            outputStream.writeObject(p1);
            outputStream.writeObject(p2);

            //Fechar os fluxos
            outputStream.close();
            fileOutputStream.close();
        } catch (Exception exception) {
            System.out.println("Algo deu errado!");
            exception.printStackTrace();
        }

        System.out.println("Objetos salvos!");


    }
}
