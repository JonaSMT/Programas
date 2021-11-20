package main;

import data.Calificable;
import data.Examen;
import data.Hotel;

public class Main {
    public static void main(String[] args) {
        Calificable[] calificables = new Calificable[5];
        calificables[0] = new Examen("Java", 8);
        calificables[1] = new Examen("C#", 7);
        calificables[2] = new Hotel("Ejemplo1", 4);
        calificables[3] = new Hotel("Ejemplo2", 2);
        calificables[4] = new Calificable() {
            @Override
            public double calificar() {
                return 15;
            }
        };

        for (int i = 0; i < calificables.length; i++){
            System.out.println(calificables[i].calificar());
        }
    }
}
