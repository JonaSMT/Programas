using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class Musico:Miembro
    {

        
        public int Ensayo { get; set; }
        public int Actuacion { get; set; }
        public int CantCobrar { get; set; }
        public int CantPagar { get; set; }
        public string Pago { get; set; }
        public Banda Banda1 { get; set; }
        public Instrumento Instrumento { get; set; }

        public Musico(string nombre, string dni, int edad, int ensayo, int actuacion, int cantCobrar, string pago, Banda banda, Instrumento instrumento) : base(nombre, dni, edad)
        {
            Ensayo = ensayo;
            Actuacion = actuacion;
            CantCobrar = cantCobrar;
            CantPagar = actuacion * cantCobrar;
            Pago = pago;
            Banda1 = banda;
            Instrumento = instrumento;
        }

        public override string ToString()
        {
            return base.ToString() + "\nEnsayos: " + Ensayo + "\nActuaciones: " + Actuacion + "\nPago: " + CantCobrar + "\nCobra: " + 
                CantPagar + "\nHa pagado: " + Pago + "\nBanda: " + Banda1 + "\nInstrumento: " + Instrumento;
        }

        public override string toArchivo()
        {
            return base.toArchivo() + Ensayo+";"+Actuacion+";"+CantCobrar+";"+CantPagar+";"+Pago+";"+Banda1+";"+Instrumento.toArchivo();
        }
    }
}
