package ejercicio;

import java.util.*;
import java.util.function.*;

class Pelicula
{
    private String titulo;
    private String director;
    private int estreno;
    
    public Pelicula(String titulo, String director, int estreno)
    {
        this.titulo = titulo;
        this.director = director;
        this.estreno = estreno;
    }
    
    public String getTitulo()
    {
        return titulo;
    }
    
    public String getDirector()
    {
        return director;
    }
    
    public int getEstreno()
    {
        return estreno;
    }
    
    @Override
    public String toString()
    {
        return titulo + " (" + director + ", " + estreno + ")";
    }
}

public class EjercicioSeccion2 
{
    static void mostrar(List<Pelicula> peliculas, Consumer c)
    {
        // Peliculas ordenadas por estreno
        peliculas.sort(((o1, o2) -> o2.getEstreno() - o1.getEstreno()));
        System.out.println("Peliculas ordenadas por estreno:");
        for (Pelicula p:peliculas) {
            c.accept(p);
        }
        System.out.println();

        // Peliculas ordenadas por director, en caso de igualdad, por titulo
        Comparator<Pelicula> director = ((o1, o2) -> o1.getDirector().compareTo(o2.getDirector()));
        Comparator<Pelicula> titulo = (((o1, o2) -> o1.getTitulo().compareTo(o2.getTitulo())));
        System.out.println("Peliculas ordenadas por director y titulo en caso de igualdad:");
        peliculas.sort(director.thenComparing(titulo));
        for (Pelicula p:peliculas) {
            c.accept(p);
        }
        System.out.println();
    }
    
    public static void main(String[] args)
    {
        List<Pelicula> peliculas = new ArrayList<>();
        peliculas.add(new Pelicula("E.T.", "Steven Spielberg", 1982));
        peliculas.add(new Pelicula("Avatar", "James Cameron", 2009));
        peliculas.add(new Pelicula("Salvar al soldado Ryan", "Steven Spielberg", 1998));
        peliculas.add(new Pelicula("Origen", "Christopher Nolan", 2010));
        peliculas.add(new Pelicula("L.A. Confidential", "Curtis Hanson", 1997));

        Consumer<Pelicula> imprimir = System.out::println;

        mostrar(peliculas, imprimir);
    }
}
