import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

public class OpenCSV {
    static String row;

    public static void abrir() throws IOException {
    BufferedReader csvReader = new BufferedReader(new FileReader("C:/Users/leafe/OneDrive/Documentos/Pokemon/kanto.csv"));
    while ((row = csvReader.readLine()) != null) {
    String[] kanto = row.split(",");
    System.out.println(Arrays.toString(kanto));

    }csvReader.close();}

}
