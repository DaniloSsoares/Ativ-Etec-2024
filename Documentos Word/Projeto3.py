import random

class decidaPorMim:
    def __init__(self):
        self.resposta = [
              'faça isso com certeza', 'não faça isso com certeza', 'não sei vc quem sabe','não recomendo mas vc pode tentar','é uma boa pergunta ;D'
              ]

    def Iniciar(self):
             input('Faça uma pergunta para o nosso sistema!')
             print(random.choice(self.resposta))

decida=decidaPorMim()
decida.Iniciar()