using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class NoMusico:Miembro
    {
        public string Pago { get; set; }
        public NoMusico(string nombre, string dni, int edad, string pago) : base(nombre, dni, edad)
        {
            Pago = pago;
        }

        public override string ToString()
        {
            return base.ToString() + "\nHa pagado: " + Pago;
        }

        public override string toArchivo()
        {
            return base.toArchivo() + Pago;
        }
    }
}
