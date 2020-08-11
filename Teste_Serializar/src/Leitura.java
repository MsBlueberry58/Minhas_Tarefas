import java.io.FileInputStream;
import java.io.ObjectInputStream;

public class Leitura {
    public static void main(String[] args) {
        try {

            String p1, p2;

            //Cria uma forma de escrever arquivos no S.O.
            FileInputStream fileInputStream = new FileInputStream("Teste_Bruna");
            //Cria objeto que faz a conversão em bytes dos objetos
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

            //Escreve os objetos no arquivo
            p1 = (String) objectInputStream.readObject();
            p2 = (String) objectInputStream.readObject();

            System.out.println(p1);
            System.out.println(p2);

            //Fechar os fluxos
            objectInputStream.close();
            fileInputStream.close();


        } catch (
                Exception exception) {
            System.out.println("Algo deu errado!");
            exception.printStackTrace();
        }
    }

}
