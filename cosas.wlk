object knightRider {
    method peso() = 500
    method nivelDePeligrosidad() = 10
}

object bumbleBee {
    var formaActual = auto

    method peso() = 800

    method nivelDePeligrosidad() = formaActual.nivelDePeligrosidad()

    method transformar(){
        formaActual = if(formaActual==auto) robot else auto
    }
}
object auto { method nivelDePeligrosidad() = 15 }
object robot { method nivelDePeligrosidad() = 30 }

object paqueteDeLadrillos {
    var cantidadDeLadrillos = 20

    method peso() = 2 * cantidadDeLadrillos
    method nivelDePeligrosidad() = 2

    method cantidadDeLadrillos(nuevaCantidad){
        cantidadDeLadrillos = nuevaCantidad
    }
}

object arenaAGranel {
    var property peso = 0
    
    method nivelDePeligrosidad() = 1
}

object bateriaAntiaerea {
    var tieneMisiles = false

    method peso() = if (tieneMisiles) 300 else 200

    method nivelDPeligrosidad() = if (tieneMisiles) 100 else 0

    method alternarCargaDeMisiles(){
        tieneMisiles = !tieneMisiles
    }
}

object contenedorPortuario {
    const cosas = []

    method peso() = 100 + self.pesoTotalDelContenido()

    method pesoTotalDelContenido() = cosas.sum({c => c.peso()})

    method nivelDePeligrosidad() = if (cosas.isEmpty()) 0 else self.peligrosidadMaximaDelContenido()

    method peligrosidadMaximaDelContenido() = cosas.max({c => c.nivelDePeligrosidad()})
}

object residuosRadioactivos {
    var property peso = 0
    
    method nivelDePeligrosidad() = 200
}

object embalajeDeSeguridad {
    var objetoEnvuelto = residuosRadioactivos

    method peso() = objetoEnvuelto.peso()

    method nivelDePeligrosidad() = objetoEnvuelto.nivelDePeligrosidad() * 0.5

    method envolverObjeto(unObjeto){
        objetoEnvuelto = unObjeto
    }
}