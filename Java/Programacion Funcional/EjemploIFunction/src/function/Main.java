package function;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;

public class Main {
    static List<Persona> filtrar(List<Persona> personas, Predicate<Persona> predicado){
        List<Persona> resultado = new ArrayList<>();

        for (Persona p:personas) {
            if (predicado.test(p)){
                resultado.add(p);
            }
        }
        return resultado;
    }
    public static void main(String[] args) {
        List<Persona> personas = new ArrayList<>();
        personas.add(new Persona("Pepe", 10));
        personas.add(new Persona("Maria", 20));
        personas.add(new Persona("Juan", 30));

        //BiFunción que filtra personas por edad

        BiFunction<List<Persona>, Integer, List<Persona>> minEdad = (lista, edad) ->
        {
            List<Persona> resultado = new ArrayList<>();
            for (Persona p:lista) {
                if (p.getEdad() >= edad)
                    resultado.add(p);
            }
            return resultado;
        };

        //Funcion mostrar nombre por comas

        Function<List<Persona>, String> nombreConComas = lista -> {
            String resultado = "";
            for (int i = 0; i < lista.size(); i++){
                if (i < lista.size() - 1)
                    resultado += lista.get(i).getNombre() + ", ";
                else
                    resultado += lista.get(i).getNombre();
            }
            return resultado;
        };

        System.out.println("Nombres separados por comas:");
        System.out.println(nombreConComas.apply(personas));
        System.out.println();

        List<Persona> adultos = minEdad.apply(personas, 18);

        System.out.println("Personas mayores de 18:");
        for (Persona p:adultos) {
            System.out.println(p.getNombre() + " " + p.getEdad());
        }
        System.out.println();

        //Combinación de funciones

        BiFunction<List<Persona>, Integer, String> nombresAdultos = minEdad.andThen(nombreConComas);
        System.out.println("Nombres de personas adultas:");
        System.out.println(nombresAdultos.apply(personas, 18));
    }
}
