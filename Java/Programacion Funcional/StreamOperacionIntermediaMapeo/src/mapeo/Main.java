package mapeo;

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

        personas.stream()
                .map(p -> p.getNombre())
                .forEach(p -> System.out.println(p));

        System.out.println("Personas creadas a partir de strings: ");
        List<String> datosPersonas = new ArrayList<>();
        datosPersonas.add("Adrian:30");
        datosPersonas.add("Julia:45");
        datosPersonas.stream()
                .map(d -> {
                    String nombre = d.split(":")[0];
                    int edad = Integer.parseInt(d.split(":")[1]);
                    return new Persona(nombre, edad);
                })
                .forEach(p -> System.out.println(p));

        List<String> datos = new ArrayList<>();
        datos.add("nombre;2");
        datos.add("apellido;3");
        datos.stream()
                .map(d -> {
                    String nombre = d.split(";")[0];
                    int edad = Integer.parseInt(d.split(";")[1]);
                    return new Persona(nombre, edad);
                })
                .forEach(d -> System.out.println(d));


    }
}
