package data;

public class Hotel implements Calificable{
    private String nombreHotel;
    private int estrellas;

    public Hotel(String nombreHotel, int estrellas) {
        this.nombreHotel = nombreHotel;
        if (estrellas <= 5 && estrellas >= 1)
            this.estrellas = estrellas;
        else
            this.estrellas = 1;
    }

    public String getNombreHotel() {
        return nombreHotel;
    }

    public void setNombreHotel(String nombreHotel) {
        this.nombreHotel = nombreHotel;
    }

    public int getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(int estrellas) {
        this.estrellas = estrellas;
    }


    @Override
    public double calificar() {
        return estrellas;
    }
}
