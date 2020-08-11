package br.maua;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Integer> Arrays = new ArrayList<>();
        Arrays.add(3);
        Arrays.add(7);
        Arrays.add(8);
        Arrays.add(9);
        Arrays.add(10);
        Arrays.add(5);

        ArrayList<No> Arvore = new ArrayList<>();

        for (Integer raiz : Arrays){
            System.out.println(raiz);
            No No_top = new No(raiz);
            Arvore.add(No_top);
        }

        for(No no : Arvore){
            System.out.println(no);
        }

    }
}
