object tom {
    const ratonesComidos = []
    var cuantoCorrio = 0
    var energia = 50
    method ratonesComidos()= ratonesComidos
    method comer(unRaton){
        ratonesComidos.add(unRaton)
        energia = 12 + unRaton.peso()
    }
    method cuantoCorrio() = cuantoCorrio
    method correr(distancia){
        cuantoCorrio += distancia
        energia = distancia / 2
    }
    method velocidadMaxima()= 5 + (energia/10)
    method puedeCazar(unaDistancia) =
        energia > (unaDistancia / 2)

    method cazarRatonADistancia(unRaton, unaDistancia){
        if(self.puedeCazar(unaDistancia)){
            self.comer(unRaton)
            cuantoCorrio += unaDistancia
            return "Lo cazó"
        }else return "No lo puede cazar"
    }
   
}

object jerry {
    var peso = 40
    var edad = 2
    method cumplirAnios(){
        edad += 1
        peso = edad * 20
    }
    method peso() = peso
}

object nibbles {
    const peso = 35
    method peso() = peso
}

object remi {
  var peso = 15
  method peso() = peso
  method comerQuesoConFresas(){ peso += 5}
}