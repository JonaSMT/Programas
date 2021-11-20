package estadistica;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Persona> personas = new ArrayList<>();
        personas.add(new Persona("Pepe", 20));
        personas.add(new Persona("Maria", 30));
        personas.add(new Persona("Juan", 5));
        personas.add(new Persona("Mario", 10));

        Optional<Persona> mayor = personas.stream().max((p1, p2) -> Integer.compare(p1.getEdad(), p2.getEdad()));
        Optional<Persona> menor = personas.stream().min((p1, p2) -> Integer.compare(p1.getEdad(), p2.getEdad()));
        OptionalDouble mediaEdades = personas.stream()
                                             .mapToInt(p -> p.getEdad())
                                             .average();
        if (mayor.isPresent())
            System.out.println(mayor.get());
        else
            System.out.println("No se han encontrado personas");

        if (menor.isPresent())
            System.out.println(menor.get());
        else
            System.out.println("No se han encontrado personas");
        if (menor.isPresent())
            System.out.println(mediaEdades.getAsDouble());
        else
            System.out.println("No se han encontrado personas");
    }
}
