package reduccion;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<Juego> juegos = new ArrayList<>();
        juegos.add(new Juego("SMITE", 0));
        juegos.add(new Juego("ETS2", 30));
        juegos.add(new Juego("KH3", 60));
        juegos.add(new Juego("Tenten", 35));

        String titulo = juegos.stream()
                                .map(p -> p.getTitulo())
                                .collect(Collectors.joining(", ", "", ""));
        System.out.println(titulo);

        int sumaPrecio = juegos.stream()
                            .mapToInt(p -> p.getPrecio())
                            .reduce(0, (e1, e2) -> e1 + e2);
        System.out.println(sumaPrecio);

        List<String> titulos = juegos.stream()
                                    .map(p -> p.getTitulo())
                                    .collect(Collectors.toList());

        for (String s:titulos) {
            System.out.println(s);
        }

        if (juegos.stream().anyMatch(p -> p.getTitulo().contains("T")))
            System.out.println("Hay juegos que contienen la T");
    }
}
