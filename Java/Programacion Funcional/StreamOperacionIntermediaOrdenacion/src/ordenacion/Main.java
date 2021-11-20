package ordenacion;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Persona> personas = new ArrayList<>();
        personas.add(new Persona("Pepe", 20));
        personas.add(new Persona("Maria", 30));
        personas.add(new Persona("Juan", 5));
        personas.add(new Persona("Mario", 10));
        personas.add(new Persona("Adrian", 20));

        Comparator<Persona> cEdad = (p1, p2) -> Integer.compare(p1.getEdad(), p2.getEdad());
        Comparator<Persona> cNombre = (p1, p2) -> p1.getNombre().compareTo(p2.getNombre());
        personas.stream()
                .sorted(cEdad.thenComparing(cNombre))
                .forEach(p -> System.out.println(p));
    }
}
