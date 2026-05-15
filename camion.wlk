import cosas.*

object camion {
    const cosasCargadas = []

    method cargarCosa(unaCosa){
        cosasCargadas.add(unaCosa)
    }

    method descargarCosa(unaCosa){
        cosasCargadas.remove(unaCosa)
    }

    method pesoTotal() = 1000 + cosasCargadas.sum({c => c.peso()})

    method todosLosPesosSonNumerosPares() = cosasCargadas.all({c => c.peso().even()})

    method hayCosaConPeso(unPeso){
        
    }
}  