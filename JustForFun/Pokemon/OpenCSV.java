import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class OpenCSV {
    static String row;
    String path;

    public static void abrir(String path) throws IOException {
        String[] kanto;
        BufferedReader csvReader = new BufferedReader(new FileReader(path));
        while ((row = csvReader.readLine()) != null) {
            kanto = row.split(",");
            System.out.println(Arrays.toString(kanto));

        }
        csvReader.close();
    }

    public static void separar(String[] region) throws IOException {
        String linha;
        String[] regionr;
        while ((linha = csvReader.readLine()) != null) {
            regionr = Arrays.toString(region).split(",");
            System.out.println(Arrays.toString(region));
        }
    }

    public static String[][] CriarMatriz(String path) throws IOException {
        // Declarando variáveis
        int i, j;
        String[] regioncoluna, regionlinha;
        // O primeiro índice é o número de colunas, e o segundo, o número de linhas
        String[][] matriz = new String[15][930];
        String line;
        BufferedReader csvReader = new BufferedReader(new FileReader(path));

        // Separando em linhas e colunas
        while ((line = csvReader.readLine()) != null) {

            for (i = 0; i < matriz.length; i++) {
                for (j = 0; j < matriz.length; j++) {
                    regioncoluna = line.split(",");
                    matriz[i][j] = java.util.Arrays.toString(regioncoluna);
                }
                regionlinha = line.split(";");
                matriz[i][j] = java.util.Arrays.toString(regionlinha);

            }

        }
        return matriz;
    }

}