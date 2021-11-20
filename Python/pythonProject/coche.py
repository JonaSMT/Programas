class Coche:

    def __init__(self):
        hola = ""

    def get_numRuedas(self):
        return self.numRuedas

    def set_numRuedas(self, ruedas):
        self.numRuedas = ruedas

    def get_numPuertas(self):
        return self.numPuertas

    def set_numPuertas(self, puertas):
        self.numPuertas = puertas

    def get_Marca(self):
        return self.marca

    def set_Marca(self, marca):
        self.marca = marca

    def __str__(self):
        template = '{0.numRuedas} {0.numPuertas} {0.marca}'
        return template.format(self)

    def imprime(self):
        template = 'Numero ruedas: {0.numRuedas} Numero Puertas: {0.numPuertas}'
        return template.format(self)