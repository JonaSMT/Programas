package otras;

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

        System.out.println("Nombres de las 3 personas con más edad");
        Comparator<Persona> cEdad = (p1, p2) -> Integer.compare(p2.getEdad(), p1.getEdad());
        Comparator<Persona> cNombre = (p1, p2) -> p1.getNombre().compareTo(p2.getNombre());
        personas.stream()
                .filter(p -> p.getEdad() >= 10)
                .sorted(cEdad.thenComparing(cNombre))
                .limit(3)
                .map(p -> p.getNombre())
                .forEach(p -> System.out.println(p));

    }
}
