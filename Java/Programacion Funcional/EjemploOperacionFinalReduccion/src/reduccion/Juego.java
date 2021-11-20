package reduccion;

public class Juego {
    private String titulo;
    private int precio;

    public Juego(String titulo, int precio) {
        this.titulo = titulo;
        this.precio = precio;
    }

    public String getTitulo() {
        return titulo;
    }

    public int getPrecio() {
        return precio;
    }

    @Override
    public String toString() {
        return titulo + ", " + precio;
    }
}
