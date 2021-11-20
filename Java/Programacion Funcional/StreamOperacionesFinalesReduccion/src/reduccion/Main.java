package reduccion;

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

        int sumaEdades = personas.stream()
                                 .mapToInt(p -> p.getEdad())
                                 .reduce(0, (e1, e2) -> e1 + e2);
        System.out.println(sumaEdades);

        if (personas.stream().anyMatch(p -> p.getEdad() >= 18))
            System.out.println("Hay al menos un adulto en el grupo");

    }
}
