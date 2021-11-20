from coche import *


def main():
    vehiculo = Coche()
    vehiculo.set_Marca("Opel")
    vehiculo.set_numRuedas(5)
    vehiculo.set_numPuertas(10)
    listaCoches = [vehiculo]
    for i in listaCoches:
        print(i.imprime())

main()
