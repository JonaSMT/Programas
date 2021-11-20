package ficheros;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {

        try {
            List<Persona> personas =
                    Files.lines(Paths.get("personas.txt"))
                        .map(l -> new Persona(l.split(":")[0], Integer.parseInt(l.split(":")[1])))
                        .collect(Collectors.toList());
            System.out.println("Personas leidas de ficheros:");
            personas.stream().forEach(p -> System.out.println(p));

            personas.add(new Persona("Nueva", 50));
            Files.write(Paths.get("personas2.txt"), personas.stream()
                                                                 .map(p -> p.aFichero())
                                                                 .collect(Collectors.toList()));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
