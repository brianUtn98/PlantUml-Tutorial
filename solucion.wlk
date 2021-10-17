class Viaje{
	var property fechaSalida
	var property fechaLlegada
	var asientos
	var origen
	var destino
	var property transporte
	
	method estaLleno(){
		return self.pasajeros().size() == transporte.capacidad()
	}
	
	method pasajeros(){
		return asientos.filter({unAsiento => unAsiento.estaOcupado()}).size()
	}
	
	method esExpress(){
		return fechaSalida == fechaLlegada
	}
	
	method esCabotaje(){
		return origen == destino
	}
}

class Pasajero{
	var nombre
	var apellido
	var edad
	var sexo
}

class Micro{
	var property tamanioTanque
	var property litrosNafta
	var property capacidad
	
	method sinNafta(){
		return litrosNafta < 10
	}
	
	method extraLarge(){
		return capacidad > 20
	}
}


class Avion{
	var modelo
	var property turbinas
	var property cantidadTurbinas
	
	method velocidadMaxima(){
		return cantidadTurbinas * turbinas.rpm()
	}
	
	method capacidad(){
		return 150
	}
	
	method pesoTurbinas(){
		return turbinas.peso() * cantidadTurbinas
	}
	
	method esSeguro(){
		return 150*80 + self.pesoTurbinas()
	}
}

class Turbina{
	var property rpm
	var property peso
}

object trafic{
	var property chofer
	
	method capacidad() = 6
}

class Asiento{
	var numero
	var property disponible = true
	var property pasajero
	
	method reservar(unPasajero){
		self.pasajero(unPasajero)
		self.disponible(false)
	}
	
	method estaOcupado(){
		return disponible.negate()
	}
}

class PrimeraClase inherits Asiento{
	var property pulgadasTV
	var property tieneMasajeador
}

class ClaseTurista inherits Asiento{
	var property lado
}
