package Filtrado;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Persona> personas = new ArrayList<>();
        personas.add(new Persona("Pepe", 20));
        personas.add(new Persona("Maria", 30));
        personas.add(new Persona("Juan", 5));
        personas.add(new Persona("Mario", 10));

        //Método largo
        /*Stream<Persona> personaStream = personas.stream();
        Stream<Persona> adultos = personaStream.filter(p -> p.getEdad() >= 18);
        System.out.println("Personas que son mayores de edad: ");
        adultos.forEach(p -> System.out.println(p))*/

        //Método corto
        System.out.println("Personas que son mayores de edad: ");
        personas.stream()
                .filter(p -> p.getEdad() >= 18 && p.getNombre().startsWith("M"))
                .forEach(p -> System.out.println(p));
    }
}
