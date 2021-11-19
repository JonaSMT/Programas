package colecciones;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Persona[] personas = new Persona[4];
        personas[0] = new Persona("Pepe", 20);
        personas[1] = new Persona("Maria", 30);
        personas[2] = new Persona("Juan", 5);
        personas[3] = new Persona("Mario", 10);

        Persona[] adultos = Arrays.stream(personas)
                                      .filter(p -> p.getEdad() >= 18)
                                      .toArray(tam -> new Persona[tam]);

        List<Persona> listaPersonas = Arrays.stream(personas)
                                            .collect(Collectors.toList());

        OptionalDouble mediaEdad = Arrays.stream(personas)
                              .mapToInt(p -> p.getEdad())
                               .average();

        Map<String, Persona> personaMap = new HashMap<>();
        personaMap.put("1A", new Persona("Pepe", 20));
        personaMap.put("2A", new Persona("Maria", 30));
        personaMap.put("3A", new Persona("Juan", 5));
        personaMap.put("4A", new Persona("Mario", 10));

        List<Persona> menorMapa = personaMap.values().stream()
                                                      .filter(p -> p.getEdad() <= 18)
                                                      .collect(Collectors.toList());

        List<String> Dni = personaMap.entrySet()
                                      .stream()
                                       .map(Map.Entry::getKey)
                                       .collect(Collectors.toList());

    }
}
