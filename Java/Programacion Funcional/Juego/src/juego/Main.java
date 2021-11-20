package juego;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;

public class Main {
    public static void main(String[] args) {
        List<Juego> juegos = new ArrayList<>();
        juegos.add(new Juego("SMITE", "MOBA", 0));
        juegos.add(new Juego("TEMTEM", "RPG", 30));
        juegos.add(new Juego("KH", "Acción", 60));
        juegos.add(new Juego("ETS2", "Conduncción", 15));

        BiFunction<List<Juego>, Integer, List<Juego>> minPrecio = (lista, precio) -> {
            List<Juego> filtrado = new ArrayList<>();
            for (Juego j:lista) {
                if (j.getPrecio() > precio){
                    filtrado.add(j);
                }
            }
            return filtrado;
        };

        List<Juego> mas15 = minPrecio.apply(juegos, 15);
        for (Juego j :
                mas15) {
            System.out.println(j);
        }

        Function<List<Juego>, String> TituloConComa = lista -> {
            String resultado = "";
            for (int i = 0; i < lista.size(); i++) {
                if (i < lista.size() - 1)
                    resultado += lista.get(i).getTitulo() + "; ";
                else
                    resultado += lista.get(i).getTitulo();
            }
            return resultado;
        };

        System.out.println(TituloConComa.apply(juegos));

        BiFunction<List<Juego>, Integer, String> JuegosMas15 = minPrecio.andThen(TituloConComa);
        System.out.println(JuegosMas15.apply(juegos, 15));
    }
}
