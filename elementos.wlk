class Barrios{
  const elementos = []

  method esCopado() {
    return self.cantElementosBuenos() > (elementos.size() / 2)
  }
  method cantElementosBuenos() = elementos.count({ e => e.esBueno() })
}

class Elemento{
  method esBueno()
}

class Hogar inherits Elemento{
  const mugre
  const comfort

  override method esBueno(){
    return mugre * 2 <= comfort
  }
}

class Huerta inherits Elemento{
  const capacidadDeProduccion
  var nivelDeCosechas

  override method esBueno(){
    return capacidadDeProduccion > nivelDeCosechas
  }
}

class Mascota inherits Elemento{
  var salud
  const nivel = 250

  override method esBueno(){
    return salud > nivel
  }
}