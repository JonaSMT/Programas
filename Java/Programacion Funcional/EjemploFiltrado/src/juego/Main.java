package juego;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Juegos> juegos = new ArrayList<>();
        juegos.add(new Juegos("SMITE", "MOBA", 16));
        juegos.add(new Juegos("Phasmophobia", "Mierda", 12));
        juegos.add(new Juegos("Grand Fantasia", "Mierda", 6));
        juegos.add(new Juegos("ETS2", "Conduccion", 8));

        Stream<Juegos> streamJuegos = juegos.stream();
        Stream<Juegos> juegosNoKK = streamJuegos.filter(j -> !j.getGenero().contains("Mierda") && j.getEdadMin() >= 8);
        System.out.println("Estos juegos no son KK:");
        juegosNoKK.forEach(j -> System.out.println(j));

        juegos.stream()
                .filter(j -> !j.getGenero().contains("Mierda") && j.getEdadMin() >= 8)
                .forEach(j -> System.out.println(j));

    }
}
