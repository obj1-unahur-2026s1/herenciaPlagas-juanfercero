class Barrios{
  const elementos = []

  method esCopado() {
    elementos.count({e => e.esBueno()}) > elementos.count({e => not e.esBueno()})
  }
}

class Elementos{
  method esBueno()
}

class Hogar inherits Elementos{
  const mugre
  const comfort

  override method esBueno(){
    return mugre * 2 <= comfort
  }
}

class Huerta inherits Elementos{
  const capacidadDeProduccion
  var nivel

  override method esBueno(){
    return capacidadDeProduccion > nivel
  }
}

class Mascota inherits Elementos{
  var salud
  const nivel = 250

  override method esBueno(){
    return salud > nivel
  }
}