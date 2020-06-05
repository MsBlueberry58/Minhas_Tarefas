import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {

        System.out.println("Digite a regiao desejada: \n");
        Scanner scanner = new Scanner(System.in);
        String file = scanner.nextLine().toLowerCase();
        switch (file) {
            case ("kanto"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/kanto.csv");
                String[][] region = OpenCSV.CriarMatriz("C:/Users/leafe/OneDrive/Documentos/Pokemon/kanto.csv");
                System.out.println("Matriz: \n" + region);
                break;
            case ("johto"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon//johto.csv");
                break;
            case ("hoenn"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon//hoenn.csv");
                break;
            case ("sinnoh"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/sinnoh.csv");
                break;
            case ("unova"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/unova.csv");
                break;
            case ("kalos"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/kalos.csv");
                break;
            case ("alola"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/alola.csv");
                break;
            case ("galar"):
                OpenCSV.abrir("C:/Users/leafe/OneDrive/Documentos/Pokemon/galar.csv");
                break;
        }

    }
}
