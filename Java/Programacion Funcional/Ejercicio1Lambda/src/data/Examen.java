package data;

public class Examen implements Calificable{
    private String nombreAsig;
    private double nota;

    public Examen(String nombreAsig, double nota) {
        this.nombreAsig = nombreAsig;
        this.nota = nota;
    }

    public String getNombreAsig() {
        return nombreAsig;
    }

    public void setNombreAsig(String nombreAsig) {
        this.nombreAsig = nombreAsig;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    @Override
    public double calificar() {
        return nota;
    }
}
