package predicate;

import java.util.ArrayList;
import java.util.List;
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

        Predicate<Persona> pAdulto = p -> p.getEdad() >= 18;
        Predicate<Persona> pNombreM = p -> p.getNombre().startsWith("M");


        List<Persona> adultos = filtrar(personas, pAdulto.and(pNombreM));

        for (Persona p:adultos) {
            System.out.println(p.getNombre() + " " + p.getEdad());
        }
    }
}
