class Barrios{
  const elementos = []

  method esCopado() {
    return self.cantElementosBuenos() > (elementos.size() / 2)
  }
  method cantElementosBuenos() = elementos.count({ e => e.esBueno() })
}

class Elemento{
  method esBueno()
  method recibeElAtaque(plaga)
}

class Hogar inherits Elemento{
  var mugre
  const comfort

  override method esBueno(){
    return mugre * 2 <= comfort
  }
  override method recibeElAtaque(plaga){
    mugre += plaga.nivelDeDaño()
  }
}

class Huerta inherits Elemento{
  var capacidadDeProduccion
  var nivelDeCosechas

  override method esBueno(){
    return capacidadDeProduccion > nivelDeCosechas
  }
  override method recibeElAtaque(plaga){
    capacidadDeProduccion *= plaga.nivelDeDaño() * 0.1 + self.dañoAdicional(plaga)
  }
  method dañoAdicional(plaga) {
    if(plaga.transmiteEnfermedades()){
      return 10
    }
    else{
      return 0
    }
  }
}

class Mascota inherits Elemento{
  var salud
  const nivel = 250

  override method esBueno(){
    return salud > nivel
  }
  override method recibeElAtaque(plaga){
    if(plaga.transmiteEnfermedades()){
      salud -= plaga.nivelDeDaño().max(0)
    }
  }
}