package juego;

public class Juegos {
    private String nombre;
    private String genero;
    private int edadMin;

    public Juegos(String nombre, String genero, int edadMin) {
        this.nombre = nombre;
        this.genero = genero;
        this.edadMin = edadMin;
    }

    public String getNombre() {
        return nombre;
    }

    public String getGenero() {
        return genero;
    }

    public int getEdadMin() {
        return edadMin;
    }

    @Override
    public String toString() {
        return "Titulo: " + nombre + ", " + "Genero: " + genero + ", " + "Edad: " + edadMin;
    }
}
