class Plaga{
    const poblacion
    method nivelDeDaño()
    method transmiteEnfermedades() {
      return poblacion > 10 and self.condicionAdicional()
    }
    method condicionAdicional()
}

class Cucarachas inherits Plaga{
    const pesoPromedio
    override method nivelDeDaño(){
        return poblacion / 2
    }
    override method condicionAdicional() {
      return pesoPromedio >= 10
    }
}

class Pulgas inherits Plaga{
    override method nivelDeDaño(){
        return poblacion * 2
    }
    override method condicionAdicional() {}
}

class Garrapatas inherits Pulgas{
    
}

class Mosquitos inherits Plaga{
    override method nivelDeDaño(){
        return poblacion
    }
    override method condicionAdicional() {
        return poblacion % 3 == 0
    }
}